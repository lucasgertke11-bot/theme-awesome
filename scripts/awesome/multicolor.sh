#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_PATH="$SCRIPT_DIR/../../../../themes/awesome"

echo "Installing AwesomeWM (multicolor) on Gentoo"

echo "Installing dependencies..."
sudo emerge --ask x11-wm/awesome x11-misc/picom x11-apps/xdotool x11-terms/rxvt-unicode dev-python/pywal

echo "Creating awesome config directory..."
mkdir -p "$HOME/.config/awesome"
mkdir -p "$HOME/.config/picom"

echo "Copying configuration files..."
cp -r "$THEME_PATH"/* "$HOME/.config/awesome/"

if [ -f "$HOME/.config/awesome/themes/multicolor/theme.lua" ]; then
    ln -sf "$HOME/.config/awesome/themes/multicolor" "$HOME/.config/awesome/theme"
fi

if [ -f "$HOME/.xinitrc" ]; then
    if ! grep -q "exec awesome" "$HOME/.xinitrc"; then
        echo "exec awesome" >> "$HOME/.xinitrc"
    fi
else
    echo "exec awesome" > "$HOME/.xinitrc"
fi

if command -v startx &> /dev/null; then
    echo "startx" >> "$HOME/.profile"
fi

echo "AwesomeWM multicolor theme installed successfully!"
echo "Log out and log back in, or run startx to launch AwesomeWM"