#!/bin/bash

## Author : Aditya Shakya
## Github : adi1090x

SDIR="$HOME/.config/polybar/scripts"

MENU="$(rofi -sep "|" -dmenu -i -location 1  -yoffset 23 -columns 1  -hide-scrollbar  -lines 6 -theme ~/.config/rofi/themes/my_themes/sidetab.rasi <<< "Contrast|Archlinux|Solarized|Crimson|Tropical|Aquamarine")"
case "$MENU" in
    ## Light Colors
    *Contrast) $SDIR/colors.sh -mode1 ;;
    *Archlinux) $SDIR/colors.sh -mode2 ;;
    *Solarized) $SDIR/colors.sh -mode3 ;;
    *Crimson) $SDIR/colors.sh -mode4 ;;
    *Tropical) $SDIR/colors.sh -mode5 ;;
    *Aquamarine) $SDIR/colors.sh -mode6
esac
