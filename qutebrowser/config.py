# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

## OPTIONS (((

# Uncomment this to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {
    'q': 'quit',
    'w': 'save',
    'wq': 'quit --save',
    'pt': 'tab-pin',
    'cd': 'downloads-clear'
}

# My fave keybindings! <3
config.bind('<Ctrl-t>', 'set-cmd-text -s :open -t')
config.bind('o', 'set-cmd-text -s :open')
config.bind('O', 'set-cmd-text -s :open {url}')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('T', 'set-cmd-text -s :open -t {url}')

config.bind('zh', 'tab-prev')
config.bind('zl', 'tab-next')
config.bind('<Ctrl-h>', 'tab-prev')
config.bind('<Ctrl-l>', 'tab-next')
config.bind('<Ctrl-Shift-Tab>', 'tab-prev')
config.bind('<Ctrl-Tab>', 'tab-next')

config.bind('zH', 'tab-move -')
config.bind('zL', 'tab-move +')
config.bind('<Ctrl-Shift-h>', 'tab-move -')
config.bind('<Ctrl-Shift-l>', 'tab-move +')

config.bind('<Ctrl-6>', ' <Ctrl-^>')
config.bind('<Ctrl-Enter>', ' <Ctrl-Return>')
config.bind('<Ctrl-J>', ' <Return>')
config.bind('<Ctrl-M>', ' <Return>')
config.bind('<Ctrl-[>', ' <Escape>')
config.bind('<Enter>', ' <Return>')
config.bind('<Shift-Enter>', ' <Return>')
config.bind('<Shift-Return>', ' <Return>')

config.bind('<Ctrl+Shift+Tab>', 'tab-prev')
config.bind('<Ctrl+Shift+h>', 'tab-move -')
config.bind('<Ctrl+Shift+l>', 'tab-move +')
config.bind('<Ctrl+Tab>', 'tab-next')
config.bind('<Ctrl+h>', 'tab-prev')
config.bind('<Ctrl+l>', 'tab-next')
config.bind('<Ctrl+t>', 'set-cmd-text -s :open -t')
config.bind('O', 'set-cmd-text -s :open {url}')
config.bind('T', 'set-cmd-text -s :open -t {url}')
config.bind('o', 'set-cmd-text -s :open')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('zH', 'tab-move -')
config.bind('zL', 'tab-move +')
config.bind('zh', 'tab-prev')
config.bind('zl', 'tab-next')
config.bind('pt', 'tab-pin')

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Load a restored tab as soon as it takes focus.
# Type: Bool
c.session.lazy_restore = True
# c.session.lazy_restore = False

# Open new windows in private browsing mode which does not record
# visited pages.
# Type: Bool
c.content.private_browsing = False

# Do not autoplay videos (in YouTube for example).
c.content.autoplay = False

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
# c.editor.command = ['gvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']

# Leave insert mode if a non-editable element is clicked.
# Type: Bool
# c.input.insert_mode.auto_leave = False

# Automatically enter insert mode if an editable element is focused
# after loading the page.
# Type: Bool
# c.input.insert_mode.auto_load = False

# Switch to insert mode when clicking flash and other plugins.
# Type: Bool
# c.input.insert_mode.plugins = True

# Include hyperlinks in the keyboard focus chain when tabbing.
# Type: Bool
# c.input.links_included_in_focus_chain = True

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True

c.editor.command = [
    'urxvt',
    '-e',
    'vim',
    '-f',
    '{file}',
    '-c',
    'normal {line}G{column0}l'
]
c.editor.encoding = 'utf-8'

# c.content.host_blocking.enabled = False

## OPTIONS )))

## APPEARENCE (((

# Padding (in pixels) around text for tabs.
# Type: Padding
c.tabs.padding = {'top': 2, 'bottom': 3, 'left': 5, 'right': 5}

# Padding (in pixels) around text for statusbar.
# Type: Padding
c.statusbar.padding = {'top': 3, 'bottom': 3, 'left': 5, 'right': 5}

# Position of the tab bar.
# Type: Position
# Valid values:
#   - top
#   - bottom
#   - left
#   - right
c.tabs.position = 'top'

# Format to use for the tab title. The following placeholders are
# defined:  * `{perc}`: Percentage as a string like `[10%]`. *
# `{perc_raw}`: Raw percentage, e.g. `10`. * `{title}`: Title of the
# current web page. * `{title_sep}`: The string ` - ` if a title is set,
# empty otherwise. * `{index}`: Index of this tab. * `{id}`: Internal
# tab ID of this tab. * `{scroll_pos}`: Page scroll position. *
# `{host}`: Host of the current web page. * `{backend}`: Either
# ''webkit'' or ''webengine'' * `{private}`: Indicates when private mode
# is enabled. * `{current_url}`: URL of the current web page. *
# `{protocol}`: Protocol (http/https/...) of the current web page.
# Type: FormatString
# c.tabs.title.format = '[{index}] {title}'

# Format to use for the tab title for pinned tabs. The same placeholders
# like for `tabs.title.format` are defined.
# Type: FormatString
# c.tabs.title.format_pinned = '[{index}]'

# Width (in pixels or as percentage of the window) of the tab bar if
# it's vertical.
# Type: PercOrInt
c.tabs.width = '10%'

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'https://google.com'

# URL segments where `:navigate increment/decrement` will search for a
# number.
# Type: FlagList
# Valid values:
#   - host
#   - port
#   - path
#   - query
#   - anchor
c.url.incdec_segments = ['path', 'query']

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://www.google.com/search?hl=en&q={}', 'y': 'https://youtube.com/results?search_query={}', 'g': 'https://github.com/search?q={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = ['https://google.com']

c.scrolling.smooth = False
c.tabs.background = True

## APPEARENCE )))

## FONTS (((

# Font used in the completion categories.
c.fonts.completion.category = "bold 13pt DroidSansMonoForPowerline"

# Font used in the completion widget.
c.fonts.completion.entry = "13pt DroidSansMonoForPowerline"

# Font used for the debugging console.
c.fonts.debug_console = "13pt DroidSansMonoForPowerline"

# Font used for the downloadbar.
c.fonts.downloads = "13pt DroidSansMonoForPowerline"

# Font used for the hints.
c.fonts.hints = "bold 13pt DroidSansMonoForPowerline"

# Font used in the keyhint widget.
c.fonts.keyhint = "13pt DroidSansMonoForPowerline"

# Font used for error messages.
c.fonts.messages.error = "13pt DroidSansMonoForPowerline"

# Font used for info messages.
c.fonts.messages.info = "13pt DroidSansMonoForPowerline"

# Font used for warning messages.
c.fonts.messages.warning = "13pt DroidSansMonoForPowerline"

# Default monospace fonts.
# c.fonts.monospace = '"Inconsolata Nerd Font Mono", Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'
# c.fonts.monospace = '"DroidSansMonoForPowerline"'

# Font used for prompts.
c.fonts.prompts = "13pt sans-serif"

# Font used in the statusbar.
# c.fonts.statusbar = "12pt monosace"
c.fonts.statusbar = "12pt DroidSansMonoForPowerline"

# Font used in the tab bar.
# c.fonts.tabs = "13pt monospace"

# c.fonts.tabs.selected = '13pt monospace'
# c.fonts.tabs.unselected = '13pt monospace'
c.fonts.tabs.selected = 'bold 12pt DroidSansMonoForPowerline'
c.fonts.tabs.unselected = '12pt DroidSansMonoForPowerline'

## FONTS )))

## COLORS (((

config.source('themes/xresources.py')

## COLORS )))

# vim:foldmethod=marker:foldmarker=(((,))):foldlevel=0:
