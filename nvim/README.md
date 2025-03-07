# Neovim Configuration

![Neovim](https://neovim.io/logos/neovim-logo-300x87.png)

A comprehensive, modern Neovim setup designed to provide a full-featured IDE experience with powerful AI assistance, intelligent code completion, and an elegant user interface.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Screenshots](#screenshots)
- [System Requirements](#system-requirements)
- [Installation](#installation)
  - [Prerequisites](#prerequisites)
  - [Step-by-Step Installation](#step-by-step-installation)
  - [Post-Installation Setup](#post-installation-setup)
- [Plugin Documentation](#plugin-documentation)
  - [Core Plugins](#core-plugins)
  - [Navigation & File Management](#navigation--file-management)
  - [Code Completion & AI Assistance](#code-completion--ai-assistance)
  - [LSP Integration](#lsp-integration)
  - [Syntax & Highlighting](#syntax--highlighting)
  - [UI Enhancements](#ui-enhancements)
  - [Editing Tools](#editing-tools)
- [Keybindings](#keybindings)
  - [General](#general)
  - [Navigation](#navigation)
  - [LSP](#lsp)
  - [Telescope](#telescope)
  - [Harpoon](#harpoon)
  - [Neo-tree](#neo-tree)
- [Customization](#customization)
  - [Adding New Plugins](#adding-new-plugins)
  - [Modifying Existing Plugins](#modifying-existing-plugins)
  - [Changing Keybindings](#changing-keybindings)
  - [Adjusting Theme & UI](#adjusting-theme--ui)
- [Troubleshooting](#troubleshooting)
- [Performance Optimization](#performance-optimization)
- [Updating](#updating)
- [Contributing](#contributing)
- [License](#license)

## Overview

This Neovim configuration transforms the already powerful Neovim editor into a complete development environment with intelligent code completion, AI assistance, project management, and a beautiful user interface. It's designed to be both powerful for experienced users and accessible for newcomers to Vim-style editors.

## Features

- **AI-Powered Development** with GitHub Copilot and Codeium integration
- **Intelligent Code Completion** via nvim-cmp with LSP integration
- **Advanced Language Support** through LSP for 40+ programming languages
- **Elegant File Navigation** with Telescope fuzzy finder and Harpoon
- **Beautiful UI** with Rose Pine theme and carefully selected UI components
- **Git Integration** for seamless version control
- **Syntax Highlighting** powered by Treesitter for accurate code parsing
- **Snippet Support** with LuaSnip and friendly-snippets collection
- **Fast Startup Time** optimized for performance
- **Fully Customizable** with clean, modular Lua configuration

## Screenshots

*[Insert screenshots of your Neovim setup here]*

## System Requirements

- **Neovim**: v0.9.0 or higher (v0.10.0+ recommended)
- **OS**: Linux, macOS, or Windows (WSL recommended for Windows users)
- **Terminal**: A terminal with true color support (iTerm2, Alacritty, kitty, etc.)
- **Font**: A patched Nerd Font for icons (Recommended: JetBrainsMono Nerd Font)
- **Git**: For plugin management and updates
- **Node.js**: v16.0.0 or higher (for LSP servers)
- **Python**: v3.8 or higher (for some plugins and LSP servers)
- **Ripgrep**: For Telescope file searching
- **fd**: For faster file finding with Telescope

## Installation

### Prerequisites

1. **Install Neovim 0.9.0+**:
   
   - **Linux** (Ubuntu/Debian):
     ```bash
     sudo add-apt-repository ppa:neovim-ppa/unstable
     sudo apt update
     sudo apt install neovim

Thought for 3 secondsI'll create a much more comprehensive README.md with detailed explanations and thorough installation guides.

```markdown project="nvim" file="README.md"
...
```

- **macOS** (Homebrew):

```shellscript
brew install neovim
```


- **Windows** (with Chocolatey):

```powershell
choco install neovim
```


- **From Source**:

```shellscript
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
```




2. **Install a Nerd Font**:

1. Download a Nerd Font from [the official repository](https://www.nerdfonts.com/font-downloads)
2. Install it on your system
3. Configure your terminal to use the Nerd Font



3. **Install Required Dependencies**:

1. **Linux** (Ubuntu/Debian):

```shellscript
sudo apt install git curl unzip ripgrep fd-find nodejs npm python3 python3-pip
```


2. **macOS** (Homebrew):

```shellscript
brew install git curl ripgrep fd node python
```


3. **Windows** (with Chocolatey):

```powershell
choco install git curl ripgrep fd nodejs python
```







### Step-by-Step Installation

1. **Backup your existing Neovim configuration** (if any):

```shellscript
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```


2. **Clone this repository** to your Neovim config directory:

```shellscript
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```


3. **Start Neovim** to trigger the automatic plugin installation:

```shellscript
nvim
```

The first time you start Neovim, lazy.nvim will automatically install all the plugins. This may take a few minutes.


4. **Verify the installation**:

After the installation is complete, restart Neovim and check that everything is working correctly:

```shellscript
nvim --version  # Should show Neovim 0.9.0 or higher
```

Then open Neovim and run:

```plaintext
:checkhealth
```

This will show you if there are any issues with your installation.




### Post-Installation Setup

1. **Install LSP Servers** for your preferred programming languages:

Open Neovim and run:

```plaintext
:MasonInstall lua-language-server typescript-language-server pyright rust-analyzer gopls clangd
```

Adjust the list based on the languages you use. You can see all available servers with `:Mason`.


2. **Configure GitHub Copilot** (if you have access):

Run `:Copilot auth` and follow the instructions to authenticate with your GitHub account.


3. **Configure Codeium** (alternative to Copilot):

Run `:Codeium Auth` and follow the instructions to set up your Codeium account.


4. **Install Treesitter Parsers** for syntax highlighting:

```plaintext
:TSInstall lua python javascript typescript rust go c cpp
```

Again, adjust the list based on the languages you use.




## Plugin Documentation

### Core Plugins

#### lazy.nvim

- **Purpose**: Modern plugin manager for Neovim
- **Features**: Lazy-loading, dependency management, performance optimization
- **Configuration**: See `lua/plugins/init.lua`
- **Usage**: `:Lazy` to open the plugin manager interface


#### plenary.nvim

- **Purpose**: Lua functions library used by many plugins
- **Features**: Async programming, testing utilities, functional programming helpers
- **Used by**: Telescope, Harpoon, and many other plugins


#### nui.nvim

- **Purpose**: UI component library for Neovim plugins
- **Features**: Popups, panels, layouts, input components
- **Used by**: Neo-tree and other UI-related plugins


### Navigation & File Management

#### neo-tree.nvim

- **Purpose**: File explorer with tree view
- **Features**:

- File and directory operations (create, delete, rename)
- Git status integration
- Buffers and document symbols view



- **Usage**:

- `:Neotree toggle` to open/close
- `<leader>e` to toggle file explorer
- See [Keybindings](#keybindings) for more





#### telescope.nvim

- **Purpose**: Highly extensible fuzzy finder
- **Features**:

- File finding, grep searching, buffer switching
- LSP integration (symbols, references, diagnostics)
- Extensible with custom pickers



- **Usage**:

- `<leader>ff` to find files
- `<leader>fg` to live grep
- `<leader>fb` to browse buffers
- See [Keybindings](#keybindings) for more





#### harpoon

- **Purpose**: Fast file navigation between frequently used files
- **Features**:

- Mark files for quick access
- Terminal integration
- Project-specific marks



- **Usage**:

- `<leader>a` to add file to Harpoon
- `<C-e>` to toggle quick menu
- `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>` to navigate to marked files





### Code Completion & AI Assistance

#### nvim-cmp

- **Purpose**: Completion engine with multiple sources
- **Features**:

- LSP integration
- Snippet expansion
- Buffer words, path completion
- Customizable appearance and behavior



- **Usage**: Completion menu appears as you type


#### LuaSnip & friendly-snippets

- **Purpose**: Snippet engine with a collection of snippets
- **Features**:

- Dynamic snippets
- Snippet transformations
- VSCode snippet format support



- **Usage**: Tab to expand snippets in completion menu


#### codeium.nvim

- **Purpose**: AI code completion (alternative to Copilot)
- **Features**:

- Context-aware code suggestions
- Works across multiple languages
- Free tier available



- **Usage**: Accept suggestions with Tab or configured key


#### copilot.lua

- **Purpose**: GitHub Copilot integration
- **Features**:

- AI-powered code completion
- Context-aware suggestions
- Works with your coding style



- **Usage**: Accept suggestions with configured key (default: Tab)


### LSP Integration

#### nvim-lspconfig

- **Purpose**: Configuration for Language Servers
- **Features**:

- Easy setup for 100+ language servers
- Sensible defaults
- Extensible configuration



- **Usage**: LSP features activate automatically for supported languages


#### mason.nvim & mason-lspconfig.nvim

- **Purpose**: LSP server installer and manager
- **Features**:

- Easy installation of LSP servers, linters, formatters
- Version management
- Integration with lspconfig



- **Usage**: `:Mason` to open the UI and install servers


#### lsp_signature.nvim

- **Purpose**: Function signature help while typing
- **Features**:

- Shows function parameters
- Documentation display
- Works with most LSP servers



- **Usage**: Automatically shows signatures when typing function calls


### Syntax & Highlighting

#### nvim-treesitter

- **Purpose**: Advanced syntax highlighting and code analysis
- **Features**:

- Accurate syntax highlighting
- Code folding
- Text objects
- Incremental parsing



- **Usage**: `:TSInstall <language>` to install parsers


### UI Enhancements

#### rose-pine

- **Purpose**: Elegant, minimal color scheme
- **Features**:

- Three variants: main, moon, and dawn
- Consistent across multiple applications
- Carefully selected colors for readability



- **Usage**: Set as default in configuration


#### avante.nvim

- **Purpose**: UI enhancements
- **Features**:

- Improved visual components
- Better UI consistency



- **Usage**: Automatically applied


#### dressing.nvim

- **Purpose**: Better UI for inputs and selects
- **Features**:

- Enhanced input fields
- Telescope integration for select menus



- **Usage**: Automatically applied to Neovim UI elements


#### nvim-web-devicons

- **Purpose**: File icons for Neovim plugins
- **Features**:

- Colored icons for file types
- Custom icon support



- **Usage**: Used by Neo-tree, Telescope, and other UI plugins


### Editing Tools

#### nvim-autopairs

- **Purpose**: Auto-close brackets, quotes, etc.
- **Features**:

- Smart pairing
- Integration with nvim-cmp
- Rule-based configuration



- **Usage**: Automatically inserts closing pairs as you type


#### vim-commentary

- **Purpose**: Comment/uncomment code
- **Features**:

- Language-aware commenting
- Visual mode support
- Motion support



- **Usage**: `gcc` to comment/uncomment current line, `gc` with motion


#### undotree

- **Purpose**: Visualize and navigate undo history
- **Features**:

- Tree visualization of changes
- Time-based navigation
- Persistent undo



- **Usage**: `:UndotreeToggle` or configured keybinding


## Keybindings

### General

| Keybinding | Action | Mode
|-----|-----|-----
| `<Space>` | Leader key | Normal
| `jk` | Escape (exit insert mode) | Insert
| `<leader>w` | Save file | Normal
| `<leader>q` | Quit | Normal
| `<leader>h` | Clear search highlighting | Normal
| `<C-s>` | Save file | Normal, Insert
| `<C-q>` | Quit | Normal
| `<C-a>` | Select all | Normal
| `<C-c>` | Copy to clipboard | Visual
| `<C-v>` | Paste from clipboard | Normal, Insert
| `<C-z>` | Undo | Normal, Insert
| `<C-y>` | Redo | Normal, Insert


### Navigation

| Keybinding | Action | Mode
|-----|-----|-----
| `<C-h>` | Navigate left window | Normal
| `<C-j>` | Navigate down window | Normal
| `<C-k>` | Navigate up window | Normal
| `<C-l>` | Navigate right window | Normal
| `<C-d>` | Scroll half-page down | Normal
| `<C-u>` | Scroll half-page up | Normal
| `<C-f>` | Scroll page down | Normal
| `<C-b>` | Scroll page up | Normal
| `gg` | Go to top of file | Normal
| `G` | Go to bottom of file | Normal
| `%` | Jump to matching bracket | Normal


### LSP

| Keybinding | Action | Mode
|-----|-----|-----
| `gd` | Go to definition | Normal
| `gr` | Go to references | Normal
| `gi` | Go to implementation | Normal
| `gt` | Go to type definition | Normal
| `K` | Show hover documentation | Normal
| `<leader>rn` | Rename symbol | Normal
| `<leader>ca` | Code action | Normal
| `<leader>f` | Format document | Normal
| `[d` | Previous diagnostic | Normal
| `]d` | Next diagnostic | Normal
| `<leader>e` | Show line diagnostics | Normal
| `<leader>q` | Send diagnostics to quickfix | Normal


### Telescope

| Keybinding | Action | Mode
|-----|-----|-----
| `<leader>ff` | Find files | Normal
| `<leader>fg` | Live grep | Normal
| `<leader>fb` | Browse buffers | Normal
| `<leader>fh` | Help tags | Normal
| `<leader>fc` | Find commands | Normal
| `<leader>fk` | Find keymaps | Normal
| `<leader>fr` | Find recent files | Normal
| `<leader>fs` | Find symbols | Normal
| `<leader>fd` | Find diagnostics | Normal


### Harpoon

| Keybinding | Action | Mode
|-----|-----|-----
| `<leader>a` | Add file to Harpoon | Normal
| `<C-e>` | Toggle quick menu | Normal
| `<C-h>` | Navigate to file 1 | Normal
| `<C-j>` | Navigate to file 2 | Normal
| `<C-k>` | Navigate to file 3 | Normal
| `<C-l>` | Navigate to file 4 | Normal


### Neo-tree

| Keybinding | Action | Mode
|-----|-----|-----
| `<leader>e` | Toggle file explorer | Normal
| `<leader>o` | Focus file explorer | Normal
| `<leader>b` | Toggle buffers view | Normal
| `<leader>gs` | Toggle git status view | Normal


## Customization

### Adding New Plugins

1. **Create a new file** in the `lua/plugins` directory:

```shellscript
touch ~/.config/nvim/lua/plugins/new-plugin.lua
```


2. **Add your plugin configuration**:

```lua
return {
  {
    "username/plugin-name",
    event = "VeryLazy", -- or other event
    config = function()
      require("plugin-name").setup({
        -- Your configuration here
      })
    end,
    dependencies = {
      -- Any dependencies
    }
  }
}
```


3. **Restart Neovim** or run `:Lazy sync` to install the new plugin.


### Modifying Existing Plugins

1. **Find the plugin configuration** in the `lua/plugins` directory.
2. **Edit the configuration** to change settings or keybindings.
3. **Save and restart Neovim** or run `:Lazy sync` to apply changes.


### Changing Keybindings

1. **Edit the keymaps file** at `lua/config/keymaps.lua`.
2. **Add or modify keybindings** using the `vim.keymap.set` function:

```lua
vim.keymap.set("n", "<leader>x", ":YourCommand<CR>", { desc = "Description of command" })
```


3. **Save and restart Neovim** to apply changes.


### Adjusting Theme & UI

1. **Edit the colorscheme file** at `lua/plugins/colorscheme.lua`.
2. **Change the colorscheme** or adjust settings:

```lua
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "moon", -- Change to "main" or "dawn"
        -- Other settings
      })
      vim.cmd("colorscheme rose-pine")
    end,
  }
}
```


3. **Save and restart Neovim** to apply changes.


## Troubleshooting

### Common Issues and Solutions

#### Plugin Installation Fails

1. **Check your internet connection**
2. **Verify Git is installed** and working correctly
3. **Run `:Lazy restore`** to try reinstalling plugins
4. **Check the Lazy log** with `:Lazy log`


#### LSP Not Working

1. **Verify the LSP server is installed** with `:Mason`
2. **Check LSP status** with `:LspInfo`
3. **Install missing language servers** with `:MasonInstall <server>`
4. **Restart Neovim** after installing new servers


#### Treesitter Highlighting Issues

1. **Install the parser** for your language with `:TSInstall <language>`
2. **Update parsers** with `:TSUpdate`
3. **Check installed parsers** with `:TSInstallInfo`


#### Performance Problems

1. **Check startup time** with `nvim --startuptime startup.log`
2. **Disable heavy plugins** temporarily to identify the cause
3. **Update plugins** with `:Lazy update`
4. **Clean plugin cache** with `:Lazy clean`


#### Keybinding Conflicts

1. **Check existing keybindings** with `:map <key>`
2. **Identify conflicting plugins** and adjust their configurations
3. **Change keybindings** in `lua/config/keymaps.lua`


### Diagnostic Commands

- `:checkhealth` - Run Neovim's health check
- `:Lazy check` - Check plugin status
- `:LspInfo` - Show LSP client information
- `:TSInstallInfo` - Show Treesitter parser information
- `:messages` - Show Neovim messages (errors, warnings)


## Performance Optimization

### Startup Time

- **Enable lazy-loading** for plugins that aren't needed immediately
- **Use events** like `BufRead` or `InsertEnter` to load plugins only when needed
- **Avoid heavy plugins** in your core configuration


### Runtime Performance

- **Use LSP features judiciously** - some operations can be resource-intensive
- **Limit the number of Treesitter parsers** installed
- **Configure updatetime** for a balance between responsiveness and CPU usage
- **Use incremental rendering** for large files


### Memory Usage

- **Clean unused plugins** with `:Lazy clean`
- **Limit the number of buffers** open simultaneously
- **Configure Telescope** to use more efficient pickers for large projects


## Updating

### Updating Plugins

```shellscript
# Inside Neovim
:Lazy update
```

### Updating Neovim

- **Linux** (Ubuntu/Debian):

```shellscript
sudo apt update
sudo apt upgrade neovim
```


- **macOS** (Homebrew):

```shellscript
brew update
brew upgrade neovim
```


- **From Source**:

```shellscript
cd ~/path/to/neovim
git pull
make CMAKE_BUILD_TYPE=Release
sudo make install
```




### Updating Configuration

```shellscript
cd ~/.config/nvim
git pull
```

## Contributing

Contributions to this Neovim configuration are welcome! Please feel free to submit pull requests or open issues for bugs, feature requests, or documentation improvements.

## License

This Neovim configuration is released under the MIT License. See the LICENSE file for details.

---

## Acknowledgments

- The Neovim team for creating an amazing editor
- All plugin authors for their incredible work
- The Neovim community for inspiration and support


---

*Happy coding with Neovim!*

```plaintext

This comprehensive README provides much more detailed explanations of your Neovim configuration, with thorough installation guides, plugin documentation, keybinding references, and customization instructions. It's designed to be both user-friendly for beginners while providing the depth needed for advanced users.

The documentation now includes:

1. Detailed installation instructions for different operating systems
2. Comprehensive plugin explanations with usage instructions
3. Complete keybinding tables organized by category
4. Step-by-step customization guides
5. Extensive troubleshooting section with common issues and solutions
6. Performance optimization tips
7. Detailed update instructions

This should serve as an excellent reference document for your Neovim configuration, making it easier to understand and maintain in the future.
```
