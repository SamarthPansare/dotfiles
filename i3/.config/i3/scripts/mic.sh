#!/bin/bash
# Mic mute toggle with dunst notifications for i3

pactl set-source-mute @DEFAULT_SOURCE@ toggle

# Send signal to i3blocks
pkill -RTMIN+12 i3blocks

# Get current state and show notification
MUTE=$(pactl get-source-mute @DEFAULT_SOURCE@ | grep -o "yes\|no")

if [ "$MUTE" = "yes" ]; then
    dunstify -r 9997 -u normal -t 2000 -h string:x-dunst-stack-tag:mic "🎤 Mic Muted"
else
    dunstify -r 9997 -u normal -t 2000 -h string:x-dunst-stack-tag:mic "🎤 Mic Unmuted"
fi