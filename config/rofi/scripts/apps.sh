#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## browser : @adi1090x
## music : @adi1090x

rofi_command="rofi -theme oxide" #themes/apps.rasi"

# Links
terminal="terminal"
files="files"
editor="editor de texto"
browser="Chrome"
music="Spotify"
settings="Configurações"

# Variable passed to rofi
options="$terminal\n$files\n$editor\n$browser\n$music\n$settings"

chosen="$(echo -e "$options" | $rofi_command -p "Mais Usados" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
        termite &
        ;;
    $files)
        ranger &
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

