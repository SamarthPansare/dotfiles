#!/bin/bash
#
# Sway (Wayland) Dependencies Installer
# Packages specific to sway compositor
#

set -e

echo "=== Installing Sway (Wayland) Dependencies ==="

sudo apt update

sudo apt install -y \
    sway \
    waybar \
    swaylock \
    swayidle \
    swaybg \
    grim \
    slurp \
    wl-clipboard \
    xdg-desktop-portal-wlr

echo ""
echo "=== Sway dependencies installed ==="