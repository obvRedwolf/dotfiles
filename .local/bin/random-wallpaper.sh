#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/wallpapers"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

if ! pgrep -x swww-daemon > /dev/null; then
    swww-daemon &
    sleep 1
fi

niri msg action do-screen-transition

swww img "$WALLPAPER" \
    --transition-type grow \
    --transition-duration 1

$HOME/.cargo/bin/wallust run "$WALLPAPER"

pkill -USR1 kitty
