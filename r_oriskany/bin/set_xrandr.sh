sleep 5
xrandr --output DP2-1 --auto --rotate normal --pos 0x0
xrandr --output eDP2 --off
xrandr --output DP2-1 --auto --rotate normal --pos 0x0 --output DP2-2 --auto --rotate left --pos 1920x-360
xrandr --output DP2-1 --auto --rotate normal --pos 0x0 --output DP2-2 --auto --rotate left --pos 1920x-360 --output DP2-3 --auto --rotate normal --pos -1920x660
feh --bg-max /home/sporz/custom/bgimage
