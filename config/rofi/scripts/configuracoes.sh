#!/usr/bin/env bash

## Author : Gutavo Arejano(gustavoarejano/arkk4dio)
## Mail : arejano@gmail.com
## browser : @gustavoarejano
## music : @gustavoarejano

rofi_command="rofi -theme oxide" #themes/apps.rasi"

# Link
restart="i3 Restart"
files="files"
editor="editor de texto"
browser="Chrome"
music="Spotify"
settings="Configurações"

# Variable passed to rofi
options="$restart\n$files\n$editor\n$browser\n$music\n$settings"

chosen="$(echo -e "$options" | $rofi_command -p "Configurações" -location 8 -width 20 -dmenu -selected-row 0)"
case $chosen in
    $restart)
        i3-msg restart &
        ;;
    $files)
        ~/git/arkk/scripts/nmcli_rofi.sh &
        ;;
    $editor)
        kate &
        ;;
    $browser)
        min &
        ;;
    $music)
        spotify &
        ;;
    $settings)
        xfce4-settings-manager &
        ;;
esac

