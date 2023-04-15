xrdb -merge $HOME/.Xresources &

dwmblocks &

setxkbmap se-nicke -option ctrl:nocaps &

xset r rate 300 25

pgrep picom > /dev/null || picom &

pkill -USR1 st 2> /dev/null &

xrandr --output Virtual-1 --auto

nitrogen --restore &> /dev/null &

twmnd &
