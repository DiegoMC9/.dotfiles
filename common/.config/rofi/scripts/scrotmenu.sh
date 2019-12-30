#!/bin/bash

rofi_command="rofi -theme themes/scrotmenu.rasi"

### Options ###
screen=""
area=""
window=""
# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $screen)
        scrot -d 1 ~/Pictures/Captures/%b%d::%H%M%S.jpg
        ;;
    $area)
        scrot -s -f ~/Pictures/Captures/%b%d::%H%M%S.jpg
        ;;
    $window)
        scrot -d 1 -u
        ;;
esac
