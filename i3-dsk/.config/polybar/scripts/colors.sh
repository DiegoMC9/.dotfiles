#!/bin/bash

## Author : Aditya Shakya
## Github : adi1090x

PDIR="$HOME/.config/polybar"

PID1="$(pgrep -u $UID -x polybar | head -n 1)"
PID2="$(pgrep -u $UID -x polybar | tail -n 1)"

LAUNCH1="polybar-msg -p $PID1 cmd restart"
LAUNCH2="polybar-msg -p $PID2 cmd restart"


#LAUNCH="pkill -USR1 polybar"

# Love Death Robots-----------------------------------
if  [[ $1 = "-mode1" ]]; then
# Replacing colors
sed -i -e 's/bg = .*/bg = #292929/g' $PDIR/colors.ini
sed -i -e 's/fg = .*/fg = #e1f5fe/g' $PDIR/colors.ini
sed -i -e 's/active = .*/active = #FD432E/g' $PDIR/colors.ini
sed -i -e 's/mod-bg = .*/mod-bg = #AD1200/g' $PDIR/colors.ini
sed -i -e 's/mgf = .*/mgf = #263238/g' $PDIR/colors.ini
sed -i -e 's/mod-fg = .*/mod-fg = #FD432E/g' $PDIR/colors.ini
sed -i -e 's/mod-fg-alt = .*/mod-fg-alt = #292929/g' $PDIR/colors.ini
# Restarting polybar
$LAUNCH1 &
$LAUNCH2 &
# Archlinux--------------------------------------------
elif  [[ $1 = "-mode2" ]]; then
# Replacing colors
sed -i -e 's/bg = .*/bg = #37474F/g' $PDIR/colors.ini
sed -i -e 's/fg = .*/fg = #DFDFDF/g' $PDIR/colors.ini
sed -i -e 's/active = .*/active = #c2272d/g' $PDIR/colors.ini
sed -i -e 's/bi = .*/bi = #dc344148/g' $PDIR/colors.ini
sed -i -e 's/be = .*/be = #dc344148/g' $PDIR/colors.ini
sed -i -e 's/mod-bg = .*/mod-bg = #263238/g' $PDIR/colors.ini
sed -i -e 's/mod-fg = .*/mod-fg = #00BCD4/g' $PDIR/colors.ini
# Restarting polybar
$LAUNCH1 &
$LAUNCH2 &
# Manjaro
elif  [[ $1 = "-mode3" ]]; then
# Replacing colors
sed -i -e 's/bg = .*/bg = #37474f/g' $PDIR/colors.ini
sed -i -e 's/fg = .*/fg = #e1f5fe/g' $PDIR/colors.ini
sed -i -e 's/active = .*/active = #03a9f4/g' $PDIR/colors.ini
sed -i -e 's/mod-bg = .*/mod-bg = #37474f/g' $PDIR/colors.ini
sed -i -e 's/mgf = .*/mgf = #263238/g' $PDIR/colors.ini
sed -i -e 's/mod-fg = .*/mod-fg = #00BCD4/g' $PDIR/colors.ini
sed -i -e 's/mod-fg-alt = .*/mod-fg-alt = #00BCD4/g' $PDIR/colors.ini
# Restarting polybar
$LAUNCH1 &
$LAUNCH2 &

else
echo "Available options:
-mode1		-mode2			-mode3"
fi
