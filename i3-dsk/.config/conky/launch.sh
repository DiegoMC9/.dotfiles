#!/usr/bin/env sh
cwd=$HOME/.config/conky
theme=miuiclk

killall -q conky

while pgrep -u $UID -x conky >/dev/null; do sleep 1; done
cd $cwd/$theme
conky -d -o -c ./conky.lua
