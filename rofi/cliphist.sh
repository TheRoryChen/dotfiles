#!/usr/bin/env bash
set -euo pipefail

# Show history in rofi, decode selection, and copy back to clipboard
choice="$(cliphist list | rofi -dmenu -i -p 'Clipboard')"
[ -z "${choice}" ] && exit 0
cliphist decode <<<"$choice" | wl-copy
