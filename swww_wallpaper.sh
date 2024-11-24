#!/bin/bash

swww-daemon &
sleep 0.1

wallpaper_dir="$HOME/Pictures/wp"

set_random_wallpaper () {
  wallpaper=$(find "$wallpaper_dir" -type f | shuf -n 1)
  swww img "$wallpaper" --transition-type center --transition-duration 2.5
}

set_random_wallpaper
sleep 2.8
ags
