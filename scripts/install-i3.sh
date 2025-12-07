#!/bin/bash
#
# i3 (X11) Dependencies Installer
# Packages specific to i3 window manager
#

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Track results
declare -a SUCCEEDED=()
declare -a FAILED=()

install_package() {
    local pkg="$1"
    echo -e "${BLUE}Installing ${pkg}...${NC}"
    if sudo apt install -y "$pkg" 2>&1; then
        SUCCEEDED+=("$pkg")
        echo -e "${GREEN}✓ ${pkg} installed${NC}\n"
    else
        FAILED+=("$pkg")
        echo -e "${RED}✗ ${pkg} failed${NC}\n"
    fi
}

echo -e "${BLUE}=== i3 (X11) Dependencies Installer ===${NC}\n"

# Update package list
echo -e "${YELLOW}Updating package list...${NC}"
sudo apt update

# i3 Packages
PACKAGES=(
    i3
    i3blocks
    i3lock
    feh
    xcompmgr
    xss-lock
    dex
    xdotool
    dmenu
)

# Install each package
for pkg in "${PACKAGES[@]}"; do
    install_package "$pkg"
done

# Print summary
echo -e "\n${BLUE}=== Installation Summary ===${NC}\n"

if [ ${#SUCCEEDED[@]} -gt 0 ]; then
    echo -e "${GREEN}Succeeded (${#SUCCEEDED[@]}):${NC}"
    for pkg in "${SUCCEEDED[@]}"; do
        echo -e "  ${GREEN}✓${NC} $pkg"
    done
fi

if [ ${#FAILED[@]} -gt 0 ]; then
    echo -e "\n${RED}Failed (${#FAILED[@]}):${NC}"
    for pkg in "${FAILED[@]}"; do
        echo -e "  ${RED}✗${NC} $pkg"
    done
fi

echo -e "\n${BLUE}=== Done ===${NC}"