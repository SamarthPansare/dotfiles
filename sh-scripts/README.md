
---  

**README.md**  

# Utility Scripts  

This repository contains two utility scripts:  

1. `battery-status.sh`: A script to check and display the current battery status with a warning for low battery levels.  
2. `tmux-script.sh`: A script to automate the creation and management of `tmux` sessions for your current working directory.  

## 1. `battery-status.sh`  

### Description  
This script checks the battery percentage using `upower` and provides a warning if the battery level drops below 20%.  

### Usage  
1. Ensure the script is executable:  
   ```bash  
   chmod +x battery-status.sh  
   ```  
2. Run the script:  
   ```bash  
   ./battery-status.sh  
   ```  

### Example Output  
- When the battery level is above 20%:  
  ```
  Battery: 45%
  ```  
- When the battery level is below 20%:  
  ```
  Battery: 15% (Low)
  ```  

### Requirements  
- **upower**: The script relies on `upower` to retrieve battery details. Install it if not already available:  
  ```bash  
  sudo apt install upower  
  ```  

---

## 2. `tmux-script.sh`  

### Description  
This script manages `tmux` sessions based on the current working directory. It attaches to an existing session if it exists or creates a new one if not.  

### Features  
- Automatically names the `tmux` session after the current working directory.  
- Opens a `nvim` editor in the first window.  
- Opens a terminal in a new window.  
- Sets the `nvim` window as the active window.  

### Usage  
1. Ensure the script is executable:  
   ```bash  
   chmod +x tmux-script.sh  
   ```  
2. Run the script:  
   ```bash  
   ./tmux-script.sh  
   ```  
3. Optionally, add an alias for convenience. Add the following line to your `.zshrc` or `.bashrc`:  
   ```bash  
   alias ts="$HOME/tmux-script.sh"  
   ```  
   Reload your shell configuration:  
   ```bash  
   source ~/.zshrc  # or source ~/.bashrc  
   ```  
   Now, you can run the script using the `ts` command.  

### Example Usage  
- If a `tmux` session for the current directory already exists:  
  ```
  Attaching to existing session: <directory_name>
  ```  
- If a new session is created:  
  ```
  Creating new session: <directory_name>
  ```  

### Requirements  
- **tmux**: Ensure `tmux` is installed on your system:  
  ```bash  
  sudo apt install tmux  
  ```  
- **Neovim**: If you don’t use `nvim`, update the script to use your preferred editor.  

---

