# i3 Configuration Documentation

This documentation provides an overview of the i3 window manager configuration file, its features, keybindings, and the necessary steps to set up dependencies and tools required for the setup.

---

## Overview

The provided i3 configuration file customizes the i3 window manager for better usability and productivity. It includes:

- Custom keybindings for navigation, workspace management, resizing, and launching applications.
- Integration of tools like `feh` for wallpapers, `xcompmgr` for compositing, and `rofi` for application launching.
- Session save/restore functionality using `i3-resurrect`.
- Autostart of system tray utilities like `nm-applet` and `blueman-applet`.

---

## Prerequisites

### Dependencies

Ensure the following packages are installed on your system:

1. **i3 Window Manager**
   ```bash
   sudo apt install i3
   ```

2. **feh** (for wallpaper management)
   ```bash
   sudo apt install feh
   ```

3. **xcompmgr** (for compositing)
   ```bash
   sudo apt install xcompmgr
   ```

4. **rofi** (for application launching)
   ```bash
   sudo apt install rofi
   ```

5. **i3-resurrect** (for saving and restoring session layouts)
   Install via `pipx`:
   ```bash
   pipx install i3-resurrect
   ```

6. **nm-applet** (Network Manager applet)
   ```bash
   sudo apt install network-manager-gnome
   ```

7. **blueman-applet** (Bluetooth manager applet)
   ```bash
   sudo apt install blueman
   ```

8. **xss-lock** (for screen locking)
   ```bash
   sudo apt install xss-lock
   ```

9. **i3lock** (for screen locking)
   ```bash
   sudo apt install i3lock
   ```

### Fonts

This configuration uses the **FiraCode Medium** font. Install it using:
```bash
sudo apt install fonts-firacode
```

---

## Keybindings

### Basic Navigation
- **Move focus**:
  - `$mod+j` / `$mod+Left`: Focus left
  - `$mod+k` / `$mod+Down`: Focus down
  - `$mod+l` / `$mod+Up`: Focus up
  - `$mod+semicolon` / `$mod+Right`: Focus right

- **Move focused window**:
  - `$mod+Shift+j` / `$mod+Shift+Left`: Move left
  - `$mod+Shift+k` / `$mod+Shift+Down`: Move down
  - `$mod+Shift+l` / `$mod+Shift+Up`: Move up
  - `$mod+Shift+semicolon` / `$mod+Shift+Right`: Move right

### Layouts
- `$mod+h`: Split horizontally
- `$mod+v`: Split vertically
- `$mod+s`: Switch to stacking layout
- `$mod+w`: Switch to tabbed layout
- `$mod+e`: Toggle split layout
- `$mod+f`: Toggle fullscreen
- `$mod+Shift+space`: Toggle floating

### Workspaces
- **Switch to workspace**:
  - `$mod+1` to `$mod+0`: Switch to workspace 1 to 10
- **Move window to workspace**:
  - `$mod+Shift+1` to `$mod+Shift+0`: Move window to workspace 1 to 10

### Application Launching
- `$mod+Return`: Launch terminal
- `$mod+d`: Launch `dmenu`
- `$mod+t`: Launch `rofi`

### Session Management
- `$mod+Shift+s`: Save session layout
- `$mod+Shift+t`: Restore session layout

### System Management
- `$mod+Shift+c`: Reload i3 configuration
- `$mod+Shift+r`: Restart i3
- `$mod+Shift+e`: Exit i3

### Volume Control
- **Increase volume**: `XF86AudioRaiseVolume`
- **Decrease volume**: `XF86AudioLowerVolume`
- **Mute volume**: `XF86AudioMute`
- **Mute microphone**: `XF86AudioMicMute`

### Resizing Windows
Enter resize mode with `$mod+r`, then:
- `j` / `Left`: Shrink width
- `k` / `Down`: Grow height
- `l` / `Up`: Shrink height
- `semicolon` / `Right`: Grow width

Exit resize mode with `Return` or `Escape`.

---

## Additional Features

1. **Wallpaper Management**
   - The wallpaper is set using `feh`. Update the path in the configuration file as needed:
     ```bash
     exec_always --no-startup-id feh --bg-fill ~/Pictures/Wallpapers/spiderman_fall.jpg
     ```

2. **Session Save/Restore**
   - Save the current session layout with `$mod+Shift+s`.
   - Restore the saved session layout with `$mod+Shift+t`.

3. **Application Tray**
   - `nm-applet`: Manages network connections.
   - `blueman-applet`: Manages Bluetooth devices.

---

## Customization
Feel free to edit the configuration file to suit your needs. Refer to the [i3 User Guide](https://i3wm.org/docs/userguide.html) for advanced configurations and tips.

---

## Troubleshooting

1. **Keybindings not working**: Ensure no other application is using the same key combination.
2. **Dependencies missing**: Verify that all dependencies listed above are installed.
3. **Wallpaper not displayed**: Confirm the path to the wallpaper image is correct.
4. **Session restore not working**: Ensure `i3-resurrect` is properly installed via `pipx`.

---

## References
- [i3 Window Manager Documentation](https://i3wm.org/docs/)
- [Arch Wiki: i3](https://wiki.archlinux.org/title/i3)
- [i3-resurrect GitHub Repository](https://github.com/orestisf1993/i3-resurrect)

