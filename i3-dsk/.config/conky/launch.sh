#!/usr/bin/env sh
dir=$HOME/.config/conky/themes
#Gotham, LDR
theme=LDR

killall -q conky

while pgrep -u $UID -x conky >/dev/null; do sleep 1; done
cd $dir/$theme
conky -d -o -c ./conky.lua
