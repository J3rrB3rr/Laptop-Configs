#!/bin/bash

image_dir="$HOME/Pictures/wp"
images=$(find "$image_dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" -o -iname "*.bmp" \) -exec basename {} \; )

if [[ -z "$images" ]]; then
    exit 1
fi

selected_image=$(echo "$images" | rofi -dmenu -i -show-icons -theme-str 'listview { lines: 10; }' -p "Select Image" -l 10)

if [[ -n "$selected_image" ]]; then
    swww img "$image_dir/$selected_image" --transition-type center --transition-duration 2.5 >/dev/null 2>&1
fi
