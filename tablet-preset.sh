#!/bin/bash

# Directory containing preset files
preset_directory="/home/taha/.config/OpenTabletDriver/Presets/"

# Check if the directory exists
if [ -d "$preset_directory" ]; then
    # Use find to list all files in the directory (without extensions)
    presets=($(find "$preset_directory" -maxdepth 1 -type f -exec basename {} \;))

    # Use Rofi to select a preset
    selected_preset=$(printf "%s\n" "${presets[@]%.*}" | rofi -dmenu -p "Select preset:")

    # Check if a preset was selected
    if [ -n "$selected_preset" ]; then
        # Run the OpenTabletDriver command with the selected preset file
        otd applypreset "$selected_preset"
    else
        echo "No preset selected."
    fi
else
    echo "Preset directory does not exist: $preset_directory"
fi
