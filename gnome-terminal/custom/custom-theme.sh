#jlopez@max2:~/Dropbox/dotfiles/gnome-terminal$ gconftool -R /apps/gnome-terminal/profiles
# /apps/gnome-terminal/profiles/Default:
#    cursor_shape = block
#    scrollback_lines = 2242
#    allow_bold = true
#    scrollback_unlimited = false
#    scroll_background = true
#    backspace_binding = ascii-del
#    use_theme_colors = true
#    encoding = actual
#    update_records = true
#    use_custom_default_size = false
#    login_shell = false
#    icon = 
#    background_image = 
#    background_darkness = 0.5
#    foreground_color = #000000000000
#    delete_binding = escape-sequence
#    scrollbar_position = right
#    use_system_font = true
#    use_custom_command = false
#    scroll_on_output = false
#    background_color = #FFFFFFFFDDDD
#    word_chars = -A-Za-z0-9,./?%&#:_=+@~
#    palette = #2E2E34343636:#CCCC00000000:#4E4E9A9A0606:#C4C4A0A00000:#34346565A4A4:#757550507B7B:#060698209A9A:#D3D3D7D7CFCF:#555557575353:#EFEF29292929:#8A8AE2E23434:#FCFCE9E94F4F:#72729F9FCFCF:#ADAD7F7FA8A8:#3434E2E2E2E2:#EEEEEEEEECEC
#    visible_name = Default
#    title = Terminal
#    default_show_menubar = true
#    default_size_rows = 24
#    font = Monospace 12
#    default_size_columns = 80
#    scroll_on_keystroke = true
#    silent_bell = true
#    exit_action = close
#    custom_command = 
#    background_type = solid
#    bold_color = #000000000000
#    cursor_blink_mode = system
#    alternate_screen_scroll = true
#    bold_color_same_as_fg = true
#    title_mode = replace

# NOTE: First you have to create a new profile manually and set the ID below
# TODO: Create the profile from the command line
dconf write "/org/gnome/terminal/legacy/profiles:/:6c3f5073-4556-4f01-8d09-ba5a63e9dcb8/palette" "['#2E2E34343636', '#CCCC00000000', '#4E4E9A9A0606', '#C4C4A0A00000', '#34346565A4A4', '#757550507B7B', '#060698209A9A', '#D3D3D7D7CFCF', '#555557575353', '#EFEF29292929', '#8A8AE2E23434', '#FCFCE9E94F4F', '#72729F9FCFCF', '#ADAD7F7FA8A8', '#3434E2E2E2E2', '#EEEEEEEEECEC']"

dconf write "/org/gnome/terminal/legacy/profiles:/:6c3f5073-4556-4f01-8d09-ba5a63e9dcb8/foreground-color" "'#000000000000'"

dconf write "/org/gnome/terminal/legacy/profiles:/:6c3f5073-4556-4f01-8d09-ba5a63e9dcb8/backround-color" "'#FFFFFFFFDDDD'"
