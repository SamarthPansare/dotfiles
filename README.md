# Dotfiles Repository  

This repository contains the configuration files and scripts I use to customize my development environment. It is structured into different directories, each focusing on specific tools or components of my setup.  

## Table of Contents  
- [i3 Configuration](#i3-configuration)  
- [Neovim Configuration](#neovim-configuration)    
- [Rofi Configuration](#rofi-configuration)  
- [Shell Scripts](#shell-scripts)  
- [Tmux Configuration](#tmux-configuration)  
- [Zsh Configuration](#zsh-configuration)  

---

## i3 Configuration  
The `i3` directory contains configuration files for the i3 window manager, providing a tiling window management experience.  

- [i3 README](./i3/README.md): Explains how to set up and customize the i3 environment.  

---

## Neovim Configuration  
The `nvim` directory contains my Neovim configuration files, leveraging Lua for plugins and custom settings.  

- [Neovim README](./nvim/README.md): Details the plugin setup, key mappings, and options.  
- Key files:  
  - `init.lua`: Main configuration file for Neovim.  
  - `lua/plugins.lua`: Plugin manager configuration using Lazy.nvim.  
  - Plugin-specific configurations in `lua/plugins`.  

---

## Rofi Configuration  
The `rofi` directory includes configuration files for Rofi, an application launcher.  

- [Rofi README](./rofi/README.md): Guides the customization of Rofi themes and behavior.  
- Key file: `config.rasi`.  

---

## Shell Scripts  
The `sh-scripts` directory contains custom shell scripts to enhance productivity.  

- [Shell Scripts README](./sh-scripts/README.md): Explains the purpose and usage of each script.  
- Key scripts:  
  - `battery-status.sh`: Displays battery status.  
  - `tmux-script.sh`: Automates tmux session management.  

---

## Tmux Configuration  
The `tmux` directory includes configuration files for tmux, a terminal multiplexer, and its related plugins.  

- [Tmux README](./tmux/README.md): Details the tmux setup and plugin usage.  

---

## Zsh Configuration  
The `zsh` directory contains the `.zshrc` configuration and related settings for the Zsh shell, customized with Oh My Zsh.  

- [Zsh README](./zsh/README.md): Covers the prompt customization, aliases, and plugin usage.  

---

## Getting Started  
To set up this environment on a new system:  

1. Clone the repository:  
   ```bash  
   git clone git@github.com:SamarthPansare/dotfiles.git  
   ```

Symlink the configuration files to their respective locations:

bash
Copy
Edit
ln -s ~/dotfiles/i3/config ~/.config/i3/config  
ln -s ~/dotfiles/nvim ~/.config/nvim  
ln -s ~/dotfiles/qt5ct/qt5ct.conf ~/.config/qt5ct/qt5ct.conf  
ln -s ~/dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi  
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc  
Install the required dependencies (e.g., tmux, Neovim, Rofi, etc.).

Follow the individual README files for each tool to fine-tune the configurations.

Contributions
Feel free to fork this repository and submit pull requests to improve the configurations or add new features.


