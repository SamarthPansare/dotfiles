#!/bin/bash
#
# i3 (X11) Dependencies Installer
# Packages specific to i3 window manager
#

set -e

echo "=== Installing i3 (X11) Dependencies ==="

sudo apt update

sudo apt install -y \
    i3 \
    i3blocks \
    i3lock \
    feh \
    xcompmgr \
    xss-lock \
    dex \
    xdotool \
    dmenu

echo ""
echo "=== i3 dependencies installed ==="