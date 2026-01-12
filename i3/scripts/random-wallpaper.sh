#!/bin/sh

WALLPAPER_DIR="$HOME/.gomes-os-i3/i3/wallpapers"

feh --bg-scale "$(find "$WALLPAPER_DIR" -type f | shuf -n 1)"
