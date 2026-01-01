#!/usr/bin/env bash

WALLDIR="$HOME/.config/i3/wallpapers"

# count total wallpapers matching 1-99
TOTAL=$(ls "$WALLDIR" | grep -E '^[0-9]+\.jpg$' | wc -l)

# random number from 1 to TOTAL, padded
RAND=$(printf "%02d" $((1 + RANDOM % TOTAL)))

feh --bg-scale "$WALLDIR/${RAND}.jpg"

