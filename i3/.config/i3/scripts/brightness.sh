#!/bin/bash
# Brightness control with dunst notifications for i3

case "$1" in
    up)
        brightnessctl set +5%
        ;;
    down)
        brightnessctl set 5%-
        ;;
esac

# Send signal to i3blocks
pkill -RTMIN+11 i3blocks

# Get current brightness and show notification
BRIGHT=$(brightnessctl g)
MAX=$(brightnessctl m)
PERCENT=$((100 * BRIGHT / MAX))

dunstify -r 9998 -u normal -t 2000 -h int:value:"$PERCENT" -h string:x-dunst-stack-tag:brightness "☀ Brightness: $PERCENT%"