#!/bin/bash

DESCRIPTION="AOC 24G4 206Q8HA000059"
MAIN_WIDTH=1920
RESOLUTION="1920x1080@60"

# Get the monitor name using description
MONITOR_NAME=$(hyprctl monitors all -j | jq -r ".[] | select(.description == \"$DESCRIPTION\") | .name")

if [ -z "$MONITOR_NAME" ]; then
    echo "Monitor with description '$DESCRIPTION' not found."
    exit 1
fi

echo "$MONITOR_NAME"

# Check if the monitor is currently enabled
DISABLED=$(hyprctl monitors all -j | jq -r ".[] | select(.name == \"$MONITOR_NAME\") | .disabled")

if [ "$DISABLED" == "false" ]; then
    echo "Disabling monitor"
    hyprctl keyword monitor "$MONITOR_NAME, disable"
elif [ "$DISABLED" == "true" ]; then
    echo "Enabling monitor"
    hyprctl keyword monitor "$MONITOR_NAME,${RESOLUTION},-${MAIN_WIDTH}x0,1"
else
    echo "No action. Value - $DISABLED"
fi
