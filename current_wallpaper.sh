#!/bin/bash

output_file="current_wallpaper.txt"
last_wallpaper=$(swww query | sed -n 's/.*image: //p')

echo "$last_wallpaper" > "$output_file"

while true; do
  current_wallpaper=$(swww query | sed -n 's/.*image: //p')

  if [ "$current_wallpaper" != "$last_wallpaper" ]; then
	
	last_wallpaper="$current_wallpaper"
	echo "$current_wallpaper" > "$output_file"
  fi
  sleep 2
done
