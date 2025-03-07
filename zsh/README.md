# Zsh Configuration README

This README explains the configuration details for the `.zshrc` file provided. It includes enhancements for productivity, theme settings, and custom configurations to optimize the terminal experience.

## Key Features

1. **Oh My Zsh Setup**
   - Uses [Oh My Zsh](https://ohmyz.sh/) for managing the Zsh configuration.
   - `ZSH_THEME` is set to `robbyrussell` for a clean and minimalistic prompt.
   - Plugins:
     - `git` plugin is enabled to enhance git functionality in the terminal.

2. **Theme and Appearance**
   - **Dark Theme:** Ensures a consistent dark theme for QT-based applications using:
     ```bash
     export QT_STYLE_OVERRIDE=adwaita-dark
     ```
   - Custom prompt settings include:
     - Displaying the current working directory.
     - Git status (clean/dirty) displayed in the prompt.

3. **Language and Locale Settings**
   - Ensures proper UTF-8 encoding for better compatibility with international text:
     ```bash
     export LANG=en_US.UTF-8
     export LC_ALL=en_US.UTF-8
     ```

4. **Custom Paths**
   - Includes custom paths for Neovim:
     ```bash
     export PATH="$PATH:/opt/nvim-linux64/bin"
     export PATH="$PATH:/opt/nvim/"
     ```

5. **Aliases for Productivity**
   - Quick alias for running tmux scripts:
     ```bash
     alias ts="bash ~/tmux-script.sh"
     alias ta="tmux attach -t"
     ```

6. **Terminal Configuration**
   - Sets terminal color capabilities to `xterm-256color` for vibrant and rich terminal colors:
     ```bash
     export TERM=xterm-256color
     ```

7. **Git Prompt Enhancements**
   - Displays the git branch and status directly in the prompt:
     ```bash
     PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
     PROMPT+=' $(git_prompt_info)'

     ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
     ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
     ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}%1{✗%}"
     ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}%1{✗%}"
     ```

8. **Custom Plugins and Extensions**
   - Easily extend functionality by adding plugins to the `plugins` array.
   - Example:
     ```bash
     plugins=(git)
     ```

## Additional Notes

### Dependencies
- **Oh My Zsh:** Install it by running:
  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
- **Neovim:** Ensure Neovim is installed in `/opt/nvim-linux64/bin` or update the paths accordingly.
- **tmux:** Required for the `ts` and `ta` aliases to work.

### File Integration
- Add the following lines to `~/.profile` or ensure your terminal uses `zsh` as the default shell:
  ```bash
  export SHELL=$(which zsh)
  exec zsh
  ```

### Customization
- To change the theme, edit the `ZSH_THEME` variable. For example:
  ```bash
  ZSH_THEME="agnoster"
  ```
- Additional aliases can be added to enhance workflow.

## How to Use
1. Copy the `.zshrc` file to your home directory:
   ```bash
   cp .zshrc ~/
   ```
2. Reload the Zsh configuration:
   ```bash
   source ~/.zshrc
   ```
3. Customize the configuration further as needed.

## Troubleshooting
- **Theme Not Loading:** Ensure `oh-my-zsh` is installed and properly set up.
- **Path Issues:** Verify the paths added to `PATH` variables are correct and executable.
- **Git Status Not Displaying:** Confirm the `git` plugin is enabled in the `plugins` array.

## Resources
- [Oh My Zsh Documentation](https://github.com/ohmyzsh/ohmyzsh/wiki)
- [Neovim Documentation](https://neovim.io/)
- [tmux Documentation](https://github.com/tmux/tmux/wiki)


