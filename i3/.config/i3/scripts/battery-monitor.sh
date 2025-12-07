#!/bin/bash
# Battery monitor with dunst notifications
# Runs in background, checks battery every 30 seconds

BATTERY_PATH="/sys/class/power_supply/BAT0"
NOTIFIED_LEVELS=""
LAST_STATUS=""

while true; do
    if [ -f "$BATTERY_PATH/capacity" ] && [ -f "$BATTERY_PATH/status" ]; then
        CAPACITY=$(cat "$BATTERY_PATH/capacity")
        STATUS=$(cat "$BATTERY_PATH/status")

        # Check if charger was just plugged in
        if [ "$STATUS" = "Charging" ] && [ "$LAST_STATUS" = "Discharging" ]; then
            # Close any existing battery warnings
            dunstify -C 9990
            dunstify -C 9991
            dunstify -C 9992
            dunstify -C 9993
            dunstify -C 9994
            # Show charging notification (auto-expires)
            dunstify -r 9995 -u normal -t 3000 -h string:x-dunst-stack-tag:battery "⚡ Charger Connected" "Battery: $CAPACITY%"
            NOTIFIED_LEVELS=""
        fi

        # Check if charger was unplugged (clear notified levels to re-enable warnings)
        if [ "$STATUS" = "Discharging" ] && [ "$LAST_STATUS" = "Charging" ]; then
            NOTIFIED_LEVELS=""
        fi

        # Only show warnings when discharging
        if [ "$STATUS" = "Discharging" ]; then
            # Critical levels with persistent notifications (timeout 0 = never expires)
            if [ "$CAPACITY" -le 1 ] && [[ ! "$NOTIFIED_LEVELS" =~ "1" ]]; then
                dunstify -r 9990 -u critical -t 0 -h string:x-dunst-stack-tag:battery "🔋 CRITICAL: 1%" "Plug in charger NOW!"
                NOTIFIED_LEVELS="$NOTIFIED_LEVELS 1"
            elif [ "$CAPACITY" -le 5 ] && [[ ! "$NOTIFIED_LEVELS" =~ "5" ]]; then
                dunstify -r 9991 -u critical -t 0 -h string:x-dunst-stack-tag:battery "🔋 CRITICAL: $CAPACITY%" "Battery extremely low!"
                NOTIFIED_LEVELS="$NOTIFIED_LEVELS 5"
            elif [ "$CAPACITY" -le 10 ] && [[ ! "$NOTIFIED_LEVELS" =~ "10" ]]; then
                dunstify -r 9992 -u critical -t 0 -h string:x-dunst-stack-tag:battery "🔋 LOW: $CAPACITY%" "Please plug in charger"
                NOTIFIED_LEVELS="$NOTIFIED_LEVELS 10"
            elif [ "$CAPACITY" -le 15 ] && [[ ! "$NOTIFIED_LEVELS" =~ "15" ]]; then
                dunstify -r 9993 -u normal -t 0 -h string:x-dunst-stack-tag:battery "🔋 Warning: $CAPACITY%" "Battery getting low"
                NOTIFIED_LEVELS="$NOTIFIED_LEVELS 15"
            elif [ "$CAPACITY" -le 20 ] && [[ ! "$NOTIFIED_LEVELS" =~ "20" ]]; then
                dunstify -r 9994 -u normal -t 0 -h string:x-dunst-stack-tag:battery "🔋 Warning: $CAPACITY%" "Consider plugging in charger"
                NOTIFIED_LEVELS="$NOTIFIED_LEVELS 20"
            fi
        fi

        LAST_STATUS="$STATUS"
    fi

    sleep 5
done