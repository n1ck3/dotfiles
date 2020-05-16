# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

## OPTIONS (((

# Uncomment this to still load settings configured via autoconfig.yml
config.load_autoconfig()

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

# Open new windows in private browsing mode which does not record
# visited pages.
# Type: Bool
c.content.private_browsing = False

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
# c.url.start_pages = ['https://google.com']

c.scrolling.smooth = False
c.tabs.background = True

## APPEARENCE )))

## COLORS (((
color0 = '#001C30'
color1 = '#7E9FC0'
color2 = '#96A8B6'
color3 = '#C0C0BF'
color4 = '#99B1C6'
color5 = '#A9BBCA'
color6 = '#B6C5D1'
color7 = '#d6dee7'
color8 = '#959ba1'
color9 = '#7E9FC0'
color10 = '#96A8B6'
color11 = '#C0C0BF'
color12 = '#99B1C6'
color13 = '#A9BBCA'
color14 = '#B6C5D1'
color15 = '#d6dee7'
colora = '#647f99'
colori = '#455769'


# # Background color of the statusbar in command mode.
# # Type: QssColor
# c.colors.statusbar.command.bg = color8
# c.colors.statusbar.command.fg = color15

# c.colors.statusbar.normal.bg = color8
# c.colors.statusbar.normal.fg = color15

# c.colors.statusbar.insert.bg = color14
# c.colors.statusbar.insert.fg = color0

# c.colors.statusbar.caret.bg = color11
# c.colors.statusbar.caret.fg = color0

# c.colors.statusbar.url.success.http.fg = color15
# c.colors.statusbar.url.success.https.fg = color7
# c.colors.statusbar.url.error.fg = color9

# # Tabs Colors
# c.colors.tabs.bar.bg = color8

# c.colors.tabs.pinned.odd.bg = color8
# c.colors.tabs.pinned.odd.fg = color7

# c.colors.tabs.pinned.even.bg = color8
# c.colors.tabs.pinned.even.fg = color7

# c.colors.tabs.odd.bg = color8
# c.colors.tabs.odd.fg = color7

# c.colors.tabs.even.bg = color8
# c.colors.tabs.even.fg = color7

# c.colors.tabs.pinned.selected.odd.bg = color13
# c.colors.tabs.pinned.selected.odd.fg = color0

# c.colors.tabs.pinned.selected.even.bg = color13
# c.colors.tabs.pinned.selected.even.fg = color0

# c.colors.tabs.selected.odd.bg = color13
# c.colors.tabs.selected.odd.fg = color0

# c.colors.tabs.selected.even.bg = color13
# c.colors.tabs.selected.even.fg = color0

# c.tabs.indicator.width = 2

# # Panel Colors
# c.colors.completion.odd.bg = color0
# c.colors.completion.even.bg = color8
# c.colors.completion.fg = color7

# c.colors.completion.item.selected.bg = color13
# c.colors.completion.item.selected.fg = color0
# c.colors.completion.item.selected.border.top = color13
# # c.colors.completion.item.selected.border.right = color13
# c.colors.completion.item.selected.border.bottom = color13
# # c.colors.completion.item.selected.border.left = color13

# # Color for the tab indicator on errors.
# c.colors.tabs.indicator.error = 'red'

# # Color gradient start for the tab indicator.
# c.colors.tabs.indicator.start = 'green'

# # Color gradient end for the tab indicator.
# # Type: QtColor
# c.colors.tabs.indicator.stop = 'green'

# set qutebrowser colors

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = color5

# Background color of the completion widget for odd rows.
# c.colors.completion.odd.bg = color8
c.colors.completion.odd.bg = color0

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = color0

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = color10

# Background color of the completion widget category headers.
c.colors.completion.category.bg = color0

# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = color0

# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = color0

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = color0

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = color10

# Top border color of the completion widget category headers.
c.colors.completion.item.selected.border.top = color10

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = color10

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = color11

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = color5

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = color0

# Background color for the download bar.
c.colors.downloads.bar.bg = color0

# Color gradient start for download text.
c.colors.downloads.start.fg = color0

# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = color13

# Color gradient end for download text.
c.colors.downloads.stop.fg = color0

# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = color12

# Foreground color for downloads with errors.
c.colors.downloads.error.fg = color8

# Font color for hints.
c.colors.hints.fg = color0

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
c.colors.hints.bg = color10

# Font color for the matched part of hints.
c.colors.hints.match.fg = color5

# Text color for the keyhint widget.
c.colors.keyhint.fg = color5

# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = color5

# Background color of the keyhint widget.
c.colors.keyhint.bg = color0

# Foreground color of an error message.
c.colors.messages.error.fg = color9

# Background color of an error message.
c.colors.messages.error.bg = color8

# Border color of an error message.
c.colors.messages.error.border = color8

# Foreground color of a warning message.
c.colors.messages.warning.fg = color0

# Background color of a warning message.
c.colors.messages.warning.bg = color14

# Border color of a warning message.
c.colors.messages.warning.border = color14

# Foreground color of an info message.
c.colors.messages.info.fg = color5

# Background color of an info message.
c.colors.messages.info.bg = color0

# Border color of an info message.
c.colors.messages.info.border = color0

# Foreground color for prompts.
c.colors.prompts.fg = color5

# Border used around UI elements in prompts.
c.colors.prompts.border = color0

# Background color for prompts.
c.colors.prompts.bg = color0

# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = color10

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = color11

# Background color of the statusbar.
c.colors.statusbar.normal.bg = color0

# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = color0

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = color13

# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = color0

# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = color12

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = color0

# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = color3

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = color5

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = color0

# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = color5

# Background color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.bg = color0

# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = color0

# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = color14

# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = color0

# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = color13

# Background color of the progress bar.
c.colors.statusbar.progress.bg = color13

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = color5

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = color8

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = color5

# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = color12

# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = color11

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = color9

# Background color of the tab bar.
c.colors.tabs.bar.bg = color0

# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = color13

# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = color12

# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = color9

# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = colora

# Background color of unselected odd tabs.
# c.colors.tabs.odd.bg = color8
c.colors.tabs.odd.bg = color0

# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = colora

# Background color of unselected even tabs.
c.colors.tabs.even.bg = color0

# Foreground color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.fg = colora

# Background color of pinned unselected odd tabs.
# c.colors.tabs.pinned.odd.bg = color8
c.colors.tabs.pinned.odd.bg = color0

# Foreground color of pinned unselected even tabs.
c.colors.tabs.pinned.even.fg = colora

# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = color0

# Foreground color of selected odd tabs.
# c.colors.tabs.selected.odd.fg = color8
c.colors.tabs.selected.odd.fg = color0

# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = colora

# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = color0

# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = colora

# Foreground color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.fg = color0

# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = colora

# Foreground color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.fg = color0

# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = colora

# Background color for webpages if unset (or empty to use the theme's
# color).
# c.colors.webpage.bg = color0<Paste>

## COLORS )))

## FONTS (((

# Font used in the completion categories.
c.fonts.completion.category = "bold 11pt monospace"

# Font used in the completion widget.
c.fonts.completion.entry = "11pt monospace"

# Font used for the debugging console.
c.fonts.debug_console = "11pt monospace"

# Font used for the downloadbar.
c.fonts.downloads = "11pt monospace"

# Font used for the hints.
c.fonts.hints = "bold 11pt monospace"

# Font used in the keyhint widget.
c.fonts.keyhint = "11pt monospace"

# Font used for error messages.
c.fonts.messages.error = "11pt monospace"

# Font used for info messages.
c.fonts.messages.info = "11pt monospace"

# Font used for warning messages.
c.fonts.messages.warning = "11pt monospace"

# Default monospace fonts.
# c.fonts.monospace = '"Inconsolata Nerd Font Mono", Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Font used for prompts.
c.fonts.prompts = "12pt sans-serif"

# Font used in the statusbar.
c.fonts.statusbar = "11pt monospace"

# Font used in the tab bar.
c.fonts.tabs = "11pt monospace"

## FONTS )))

# vim:foldmethod=marker:foldmarker=(((,))):foldlevel=0:
