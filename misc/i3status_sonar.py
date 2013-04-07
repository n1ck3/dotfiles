#!/usr/bin/env python

from subprocess import Popen, PIPE
from json import loads, dumps
import datetime
import time

class Py3status:
    """
    Sonar whats playing yeah. :)
    """
    def sonar(self, json, i3status_config):
        """
        This method will return an empty text message, so it will NOT be displayed.
        If you want something displayed you should write something in the 'full_text' key of your response.
        See the i3bar protocol spec for more information:
        http://i3wm.org/docs/i3bar-protocol.html
        """
        # Colors
        red = "#FF0000"
        green = "#00FF00"
        orange = "#FF9900"

        cache_timeout = 5  # Seconds
        cached_until = datetime.datetime.now() + datetime.timedelta(seconds=cache_timeout)
        cached_until = time.mktime(cached_until.timetuple())

        # Default response
        response = {
            'full_text': '',
            'name' : 'sonar',
            'cached_until': cached_until
        }

        p = Popen(["sonar", "--statusbar"], stdout=PIPE, stderr=PIPE)
        so, se = p.communicate()

        try:
            data = loads(so.decode())
            output = ""

            artist = data["song"]["artist"]
            album = data["song"]["album"]
            title = data["song"]["title"]

            if len(artist) > 20:
                artist = "%s...%s" % (artist[:13], artist[-5:])
            if len(album) > 20:
                album = "%s...%s" % (album[:13], album[-5:])
            if len(title) > 20:
                title = "%s...%s" % (title[:13], title[-5:])


            if data and "song" in data and "player" in data:

                if "queue" in data and data["queue"]:
                    output += "[%s/%s] " % (data["queue"]["index"], data["queue"]["length"])

                output += "%s - %s (%s)" % (
                    artist, title, album
                )

                if "repeat" in data["player"] and data["player"]["repeat"]:
                    output += " [Repeat]"

                if "state" in data["player"]:
                    if data["player"]["state"] == "Playing":
                        response["color"] = green
                    elif data["player"]["state"] == "Paused":
                        response["color"] = orange
                    else:
                        response["color"] = red

                if "progress" in data and data["progress"]:
                    output += " %s%%" % data["progress"]["percent"]

            if output:
                response["full_text"] = output

        except Exception as e:
            # response["full_text"] = str(e)
            pass

        return (0, response)
