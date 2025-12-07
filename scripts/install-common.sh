#!/bin/bash
#
# Common Dependencies Installer
# Packages used by both i3 and sway setups
#

set -e

echo "=== Installing Common Dependencies ==="

sudo apt update

sudo apt install -y \
    alacritty \
    rofi \
    dunst \
    pipewire-pulse \
    pulseaudio-utils \
    pavucontrol \
    brightnessctl \
    network-manager-gnome \
    blueman \
    flameshot \
    clipman \
    wlogout \
    fonts-firacode \
    fonts-roboto \
    python3-i3ipc

echo ""
echo "=== Common dependencies installed ==="