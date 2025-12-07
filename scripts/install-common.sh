#!/bin/bash
#
# Common Dependencies Installer
# Packages used by both i3 and sway setups
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

echo -e "${BLUE}=== Common Dependencies Installer ===${NC}\n"

# Update package list
echo -e "${YELLOW}Updating package list...${NC}"
sudo apt update

# Desktop Environment
DESKTOP_PACKAGES=(
    alacritty
    rofi
    dunst
    pipewire-pulse
    pulseaudio-utils
    pavucontrol
    brightnessctl
    network-manager-gnome
    blueman
    flameshot
    clipman
    wlogout
    ksnip
    simplescreenrecorder
    fonts-firacode
    fonts-roboto
    python3-i3ipc
)

# Essential Tools
ESSENTIAL_PACKAGES=(
    git
    curl
    wget
    zip
    unzip
    stow
)

# Dev Tools
DEV_PACKAGES=(
    build-essential
    cmake
    ninja-build
    make
    jq
)

# Terminal Utilities
TERMINAL_PACKAGES=(
    zsh
    tmux
    fzf
    ripgrep
    zoxide
    direnv
    bat
    lsd
)

# System Monitors & Utils
SYSTEM_PACKAGES=(
    btop
    htop
    neofetch
    tree
)

# Git Tools
GIT_PACKAGES=(
    lazygit
)

# Combine all packages
ALL_PACKAGES=(
    "${DESKTOP_PACKAGES[@]}"
    "${ESSENTIAL_PACKAGES[@]}"
    "${DEV_PACKAGES[@]}"
    "${TERMINAL_PACKAGES[@]}"
    "${SYSTEM_PACKAGES[@]}"
    "${GIT_PACKAGES[@]}"
)

# Install each package
for pkg in "${ALL_PACKAGES[@]}"; do
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