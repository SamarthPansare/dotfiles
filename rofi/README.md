
---  

**README.md**  

# Rofi Configuration  

This repository contains a custom `config.rasi` file for Rofi, a powerful application launcher, window switcher, and dmenu replacement.  

## Features  

- **Search Functionality**:  
  The configuration uses `drun` mode for launching desktop applications.  

- **Modern Design**:  
  - Custom font: `Figtree 13`.  
  - Rounded corners for elements and windows (`8px`).  
  - Transparent window background for an elegant UI.  
  - Defined color scheme for consistency across UI elements.  

- **Enhanced Usability**:  
  - Icons enabled in the launcher for better navigation.  
  - Placeholder text: `Search Apps` for an intuitive experience.  
  - Fixed dimensions for list items and consistent element padding.  

- **Keyboard Navigation**:  
  - Cycling is disabled for seamless interaction.  
  - Scrollbars are hidden for a minimalist look.  

## Configuration Details  

### Window  

- **Width**: `450px` for a compact and sleek layout.  
- **Background Transparency**: Real transparency is enabled for visual clarity.  
- **Padding**: `12px` ensures spacing between window content and borders.  
- **Border**:  
  - Thickness: `2px`.  
  - Color: White (`#FFFFFFFF`).  

### Input Bar  

- **Children Elements**: `prompt` and `entry`.  
- **Spacing**: `10px` for even distribution between elements.  

### List View  

- **Number of Items**:  
  - **Lines**: `7` items per view.  
  - **Columns**: `1`.  
- **Fixed Height and Columns**: Ensures consistent sizing.  
- **Scrollbars**: Disabled for a cleaner look.  

### Color Scheme  

- **Background Colors**:  
  - Window: Semi-transparent black (`#000000CC`).  
  - Alternate Elements: Darker black (`#111111FF`).  
- **Text Colors**:  
  - Normal Text: White (`#FFFFFFFF`).  
  - Placeholder: Light gray (`#888888FF`).  
  - Highlight Text: Black (`#000000FF`).  
- **Highlighting**: White background for selected items.  

### Elements  

- **Spacing and Margins**: Unified `10px` for consistent layout.  
- **Border**: Hidden (`0px`) for a seamless design.  

## Usage  

1. Copy the `config.rasi` file to your Rofi configuration directory:  
   ```bash  
   mkdir -p ~/.config/rofi  
   cp config.rasi ~/.config/rofi/config.rasi  
   ```  

2. Launch Rofi with the following command:  
   ```bash  
   rofi -show drun  
   ```  

3. Enjoy the enhanced, user-friendly Rofi experience!  

## Customization  

Feel free to modify any parameters in the `config.rasi` file to suit your preferences. Key areas for customization include:  
- **Font Style and Size**: Update the `font` property to match your system's fonts.  
- **Color Scheme**: Adjust colors to align with your desktop theme.  
- **Window Size**: Modify `width` and `padding` for a different layout.  

## Dependencies  

- **Rofi**: Make sure you have Rofi installed on your system.  
- **Font**: Ensure the `Figtree` font is available, or replace it with your preferred font in the configuration file.  

---

