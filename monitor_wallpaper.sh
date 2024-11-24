#!/bin/bash

wallpaper_file="current_wallpaper.txt"
last_wallpaper=$(cat "$wallpaper_file")
config_file="$HOME/.config/alacritty/alacritty.toml"
colors_file="$HOME/.config/alacritty/colors.toml"

while true; do
  current_wallpaper=$(cat "$wallpaper_file")

  if [ "$current_wallpaper" != "$last_wallpaper" ]; then
    last_wallpaper="$current_wallpaper"

    matugen image "$current_wallpaper"
    cp "$config_file" "$config_file.bak"  # Backup the original config

    # Replace alacritty.toml with colors.toml
    cp "$colors_file" "$config_file"

    sleep 0.5

    pkill -USR1 alacritty
    sleep 0.5

    pkill alacritty  # Ensure only one instance is running
  fi

  sleep 3
done
