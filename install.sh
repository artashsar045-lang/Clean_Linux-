#!/bin/bash

echo "Installing clean_linux..."

# 1. Install script as system command
sudo cp clean_linux.sh /usr/local/bin/clean_linux
sudo chmod +x /usr/local/bin/clean_linux

# 2. Copy desktop file to Desktop
DESKTOP_PATH="$HOME/Desktop"

cp clean_linux.desktop "$DESKTOP_PATH/"
chmod +x "$DESKTOP_PATH/clean_linux.desktop"

# 3. Trust the desktop launcher (Ubuntu / GNOME)
gio set "$DESKTOP_PATH/clean_linux.desktop" metadata::trusted true

echo "Installed successfully!"
echo "Clean Linux icon added to Desktop"
echo "Double-click it to run cleanup"

