#!/bin/bash
# Volume control with dunst notifications for i3

case "$1" in
    up)
        pactl set-sink-volume @DEFAULT_SINK@ +5%
        ;;
    down)
        pactl set-sink-volume @DEFAULT_SINK@ -5%
        ;;
    mute)
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        ;;
esac

# Send signal to i3blocks
pkill -RTMIN+10 i3blocks

# Get current state and show notification
MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -o "yes\|no")
VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -1)

if [ "$MUTE" = "yes" ]; then
    dunstify -r 9999 -u normal -t 2000 -h int:value:0 -h string:x-dunst-stack-tag:volume "🔇 Volume Muted"
else
    dunstify -r 9999 -u normal -t 2000 -h int:value:"$VOL" -h string:x-dunst-stack-tag:volume "🔊 Volume: $VOL%"
fi