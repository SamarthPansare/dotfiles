#!/bin/bash
# Screenshot script for Sway using grim + slurp + editing

# Ensure directory exists
mkdir -p ~/Pictures/Screenshots

# Temp file for screenshot
TEMP_FILE=$(mktemp /tmp/screenshot-XXXXXX.png)
SAVE_DIR=~/Pictures/Screenshots
TIMESTAMP=$(date +%Y%m%d-%H%M%S)

case "$1" in
    region)
        # Select region and capture
        grim -g "$(slurp)" "$TEMP_FILE"
        ;;
    fullscreen)
        # Capture fullscreen
        grim "$TEMP_FILE"
        ;;
    *)
        # Default: region selection
        grim -g "$(slurp)" "$TEMP_FILE"
        ;;
esac

# Check if screenshot was taken
if [ ! -f "$TEMP_FILE" ] || [ ! -s "$TEMP_FILE" ]; then
    rm -f "$TEMP_FILE"
    exit 1
fi

# Show options using rofi
ACTION=$(echo -e "Copy to Clipboard\nSave to File\nEdit with ksnip\nCopy & Save" | rofi -dmenu -p "Screenshot Action")

case "$ACTION" in
    "Copy to Clipboard")
        wl-copy < "$TEMP_FILE"
        dunstify -t 2000 "Screenshot" "Copied to clipboard"
        rm -f "$TEMP_FILE"
        ;;
    "Save to File")
        SAVE_PATH="$SAVE_DIR/screenshot-$TIMESTAMP.png"
        mv "$TEMP_FILE" "$SAVE_PATH"
        dunstify -t 2000 "Screenshot" "Saved to $SAVE_PATH"
        ;;
    "Edit with ksnip")
        ksnip -e "$TEMP_FILE" &
        ;;
    "Copy & Save")
        SAVE_PATH="$SAVE_DIR/screenshot-$TIMESTAMP.png"
        cp "$TEMP_FILE" "$SAVE_PATH"
        wl-copy < "$TEMP_FILE"
        dunstify -t 2000 "Screenshot" "Copied & saved to $SAVE_PATH"
        rm -f "$TEMP_FILE"
        ;;
    *)
        # Cancelled - cleanup
        rm -f "$TEMP_FILE"
        ;;
esac