#!/bin/bash

# Get the battery percentage using upower
battery_percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | sed 's/%//')

# If battery is below 20%, show a warning
if [ "$battery_percentage" -lt 20 ]; then
    echo "Battery: $battery_percentage% (Low)"
else
    echo "Battery: $battery_percentage%"
fi

