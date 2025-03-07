
---

**README.md**

# TMUX Configuration

This `tmux.conf` file customizes the behavior of the `tmux` terminal multiplexer, enhancing productivity with custom keybindings, mouse support, vi-style controls, and plugin integration.

## Features

### Keybindings
- **Prefix Key:** Changes the default prefix key from `Ctrl-b` to `Ctrl-a` for more convenient access.
  - `Ctrl-a` + `[command]` replaces `Ctrl-b` + `[command]`.
  - `Ctrl-a` + `a` sends the `Ctrl-a` sequence to the terminal.

### Pane and Window Settings
- **Base Index:** Sets both windows and panes to start at index `1` (instead of `0`).
- **Status Bar Color:** Sets the status bar background color to `#66cc66` for a visually appealing look.

### Mouse Support
- Enables mouse usage for selecting, resizing panes, and switching between windows and panes.

### Copy-Paste Integration
- **System Clipboard:** Integrates system-wide copy-paste:
  - Press `Enter` in copy mode to copy selected text to the system clipboard.
  - Use the mouse to copy text directly to the clipboard when dragging and releasing.

### Vi-Style Navigation
- Enables vi-style keybindings for copy mode, allowing seamless navigation for Vim users.

### Plugins
Integrates with the TMUX Plugin Manager (TPM) for additional functionality:
1. **`tmux-plugins/tpm`:** TMUX Plugin Manager.
2. **`tmux-plugins/tmux-sensible`:** A collection of sensible defaults for TMUX.
3. **`tmux-plugins/tmux-resurrect`:** Saves and restores TMUX sessions.
4. **`tmux-plugins/tmux-continuum`:** Automatically saves TMUX sessions and restores them on boot.

### Automatic Session Restore
- Automatically saves TMUX sessions periodically and restores them on reboot using `tmux-resurrect` and `tmux-continuum`.

---

## Installation

### Prerequisites
1. **TMUX:** Ensure TMUX is installed:
   ```bash
   sudo apt install tmux
   ```
2. **xclip:** Required for clipboard integration:
   ```bash
   sudo apt install xclip
   ```

### Setup
1. Copy the `tmux.conf` file to your home directory:
   ```bash
   cp tmux.conf ~/.tmux.conf
   ```

2. Install the TMUX Plugin Manager (TPM):
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

3. Start TMUX and install the plugins:
   - Launch TMUX:
     ```bash
     tmux
     ```
   - Press `Ctrl-a + I` to install the plugins.

---

## Usage

- **Start TMUX:**  
  ```bash
  tmux
  ```
- **Prefix Key:** Use `Ctrl-a` instead of the default `Ctrl-b`.
- **Copy to Clipboard:**
  - Enter copy mode using `Ctrl-a + [`.
  - Select text using `Space` or the mouse.
  - Press `Enter` to copy the text to the system clipboard.

- **Restore Sessions Automatically:**  
  `tmux-continuum` automatically restores your sessions when TMUX starts.  

---

## Customization

Feel free to edit the file to suit your preferences. For example:
- Change the status bar color by modifying the line:
  ```bash
  set-option -g status-bg "#66cc66"
  ```
- Add or remove plugins by updating the plugin list:
  ```bash
  set -g @plugin 'tmux-plugins/[plugin-name]'
  ```

---

## License

This configuration is open for personal or professional use. Modify and share as needed!

--- 

