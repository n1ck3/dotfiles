#!/bin/sh

# Tomorrow Dark
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0001C30
  \e]P17E9FC0
  \e]P296A8B6
  \e]P3C0C0BF
  \e]P499B1C6
  \e]P5A9BBCA
  \e]P6B6C5D1
  \e]P7d6dee7
  \e]P8959ba1
  \e]P97E9FC0
  \e]PA96A8B6
  \e]PBC0C0BF
  \e]PC99B1C6
  \e]PDA9BBCA
  \e]PEB6C5D1
  \e]PFd6dee7
  "
  # get rid of artifacts
  clear
fi
