#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
for i in $(polybar -m | awk -F: '{print $1}'); do
    MONITOR="$i" polybar -c ~/.config/polybar/config.ini -rq top &
    #MONITOR="$i" polybar -c ~/.config/polybar/config.ini -rq bottom &
done
#polybar-msg cmd hide