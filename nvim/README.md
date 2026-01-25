# Neovim Configuration Guide

Modern Neovim configuration with essential plugins for efficient coding and development.

## 🚀 Quick Start

```bash
# Clone this configuration
git clone <your-repo> ~/.config/nvim

# Install plugins (first time only)
nvim --headless +':Lazy sync' +qa

# Start Neovim
nvim
```

## 📁 Configuration Structure

```
~/.config/nvim/
├── init.lua              # Main entry point
├── lazy-init.lua          # Plugin manager setup
├── lua/
│   ├── options.lua        # Editor options
│   ├── keymaps.lua        # Key mappings
│   └── lsp.lua           # LSP configuration
├── lsp/
│   ├── rust_analyzer.lua  # Rust LSP config
│   ├── clangd.lua        # C/C++ LSP config
│   └── ty.lua            # Python LSP config
└── plugins/               # Individual plugin configs
    ├── blink-cmp.lua      # Code completion
    ├── markview.lua        # Markdown rendering
    ├── fzf-lua.lua        # Fuzzy finder
    ├── bufferline.lua     # Tab manager
    ├── lazygit.lua        # Git TUI
    ├── snacks.lua         # Utilities
    └── nvim-treesitter.lua # Syntax highlighting
```

## ⌨️ Complete Keybindings (No Duplicates)

### 🎯 Core Navigation & Editing

| Key | Mode | Description |
|-----|-------|-------------|
| `<Space>` | Normal | Clear search highlight |
| `<leader>w` | Normal | Save current file |
| `<leader>q` | Normal | Quit current window |
| `<C-l>` | Normal/Insert | Move to end of line |
| `<C-h>` | Normal/Insert | Move to beginning of line |

### 🔍 Fuzzy Finder (fzf-lua)

| Command | Description |
|---------|-------------|
| `:Files` | Find files in current directory |
| `:GFiles` | Find git-tracked files |
| `:Buffers` | Find open buffers |
| `:Rg` | Ripgrep search in files |
| `:Commands` | Find and run commands |

### 📝 Markdown Rendering (markview)

| Key | Mode | Description |
|-----|-------|-------------|
| `<leader>mt` | Normal | Toggle markdown rendering |
| `<leader>me` | Normal | Enable markdown rendering |
| `<leader>md` | Normal | Disable markdown rendering |

**Markdown Elements Supported:**
- Headers with icons (H1-H6)
- Syntax-highlighted code blocks
- Special blockquotes: `> [!NOTE]`, `> [!TIP]`, `> [!WARNING]`, `> [!DANGER]`
- Interactive checkboxes: `- [ ]`, `- [x]`, `- [-]`, `- [!]`
- Lists, tables, links, and inline code

### 🎨 Code Completion (blink.cmp)

| Key | Mode | Description |
|-----|-------|-------------|
| `<Enter>` | Insert | Accept completion |
| `<Up>/<Down>` | Insert | Navigate items |
| `<Tab>/<S-Tab>` | Insert | Navigate items |
| `<C-b>/<C-f>` | Insert | Scroll documentation |
| `<C-k>` | Insert | Toggle signature help |

### 🔧 LSP (Language Server Protocol)

| Key | Mode | Description |
|-----|-------|-------------|
| `gd` | Normal | Go to definition |
| `gr` | Normal | Show references |
| `<Space>rn` | Normal | Rename symbol |
| `K` | Normal | Show hover documentation |
| `<Space>f` | Normal | Format current buffer |

**Enabled LSP Servers:**
- `ty` - Python
- `clangd` - C/C++
- `rust_analyzer` - Rust

### 📋 Buffer Management

| Key | Mode | Description |
|-----|-------|-------------|
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |
| `<leader>bd` | Normal | Delete buffer |

### 🌳 Git Integration

| Key | Mode | Description |
|-----|-------|-------------|
| `<leader>gg` | Normal | Open lazygit |
| `<leader>gl` | Normal | Open lazygit log |
| `<leader>gf` | Normal | Open lazygit for current file |
| `<leader>gs` | Normal | Git status |
| `q` | Normal | Quit lazygit |

### 🛠️ Utilities (snacks)

| Key | Mode | Description |
|-----|-------|-------------|
| `<leader>un` | Normal | Dismiss all notifications |
| `<leader>us` | Normal | Toggle spell check |
| `<leader>uw` | Normal | Toggle line wrap |
| `<leader>ud` | Normal | Toggle diagnostics |
| `<leader>uh` | Normal | Toggle inlay hints |

**Snacks Features:**
- **bigfile**: Auto-disable heavy features for large files (>2MB)
- **notifier**: Pretty notifications
- **quickfile**: Fast file rendering on startup
- **words**: Auto-show LSP references with `]]`/`[[` navigation
- **statuscolumn**: Enhanced status column with git/diagnostics
- **toggle**: Toggle keymaps for various options
- **indent**: Indentation guides
- **input**: Better input prompts
- **scope**: Scope detection and text objects
- **scroll**: Smooth scrolling

## 🎨 Themes & UI

- **Colorscheme**: Desert (dark background)
- **Icons**: Nerd Font icons for files and status indicators
- **Line Numbers**: Absolute line numbers
- **Cursor Line**: Highlight current line
- **Status Column**: Enhanced with git status and diagnostics

## 🌳 Language Support

### Syntax Highlighting (treesitter)

**Supported Languages:**
- Bash, C, C++, Lua, Markdown, Python, Rust, Vim, Vimdoc

**Text Objects:**
- `af`/`if` - Around/inside function
- `ac`/`ic` - Around/inside class

### Development Tools

**Mason** - LSP Package Manager
```
:Mason              # Open Mason UI
```

**Available to Install:**
- Language servers
- Linters
- Formatters
- Debuggers

## 📦 Plugin Management

```bash
:Lazy              # Open plugin manager UI
:Lazy sync         # Sync plugins
:Lazy clean        # Remove unused plugins
:Lazy update       # Update all plugins
:Lazy profile      # Profile startup time
```

## 📚 Plugin Usage Guide

### blink.cmp - Code Completion
Modern, fast completion engine using Rust fuzzy matcher.

**Features:**
- LSP-based completions
- Path completions
- Snippet support (via friendly-snippets)
- Auto-documentation
- Signature help

**Usage:**
- Type to trigger completions automatically
- Use `<Enter>` to accept selected completion
- Use arrow keys or `<Tab>`/`<S-Tab>` to navigate
- `<C-b>`/`<C-f>` scroll documentation window
- `<C-k>` shows/hides function signature help

### fzf-lua - Fuzzy Finder
Blazing fast fuzzy finder for files, buffers, and more.

**Usage:**
- `:Files` - Browse and search project files
- `:GFiles` - Browse git-tracked files only
- `:Buffers` - Switch between open buffers
- `:Rg` - Search content across files (ripgrep)
- `:Commands` - Search and run Neovim commands

**Tips:**
- Type to filter results in real-time
- Use `<Tab>`/`<S-Tab>` or arrow keys to navigate
- Press `<Enter>` to select/open item
- Supports fuzzy matching and regex patterns
- Use preview with `?` to see file contents

### markview - Markdown Rendering
Enhanced markdown viewing with live rendering.

**Supported Syntax:**
- **Headings**: `#` to `######` with decorative icons
- **Code Blocks**: Triple backticks with language syntax highlighting
- **Inline Code**: `code` with special highlighting
- **Blockquotes**: Regular quotes and typed callouts
- **Callout Types**:
  - `> [!NOTE]` - Note block (blue)
  - `> [!TIP]` - Tip block (green)
  - `> [!WARNING]` - Warning block (yellow)
  - `> [!DANGER]` - Danger block (red)
- **Lists**: Bulleted (`-`, `+`, `*`) and numbered
- **Tables**: Basic markdown tables with highlighting
- **Links**: Markdown `[text](url)` and wiki `[[link]]` links
- **Checkboxes**:
  - `- [ ]` - Unchecked
  - `- [x]` - Checked
  - `- [-]` - Pending
  - `- [!]` - Important

**Usage:**
- `<leader>mt` - Toggle rendering on/off
- `<leader>me` - Enable rendering
- `<leader>md` - Disable rendering
- Works automatically in normal and insert modes
- Open any `.md` file to see rendering

### snacks.nvim - Utilities
Collection of quality-of-life plugins by folke.

**Enabled Modules:**
- **bigfile**: Automatically detects files >2MB and disables heavy features
- **notifier**: Beautiful notifications with history
- **quickfile**: Renders files instantly before loading plugins
- **words**: Shows LSP references when cursor hovers, navigate with `]]`/`[[`
- **statuscolumn**: Enhanced status column with git status and diagnostics
- **toggle**: Easy toggle mappings for editor options
- **indent**: Visual indentation guides
- **input**: Better input UI for prompts
- **scope**: Detect code scopes and jump between them
- **scroll**: Smooth scrolling experience

**Usage:**
- `<leader>un` - Dismiss all pending notifications
- `]]` - Jump to next LSP reference
- `[[` - Jump to previous LSP reference
- Toggle options: `<leader>us` (spell), `<leader>uw` (wrap), `<leader>ud` (diagnostics), `<leader>uh` (inlay hints)

### lazygit - Git TUI
Terminal UI for Git operations with Neovim integration.

**Usage:**
- `<leader>gg` - Open lazygit in floating window
- `q` - Quit lazygit and return to Neovim
- Use arrow keys and standard git commands inside lazygit

**Available Commands:**
- `:LazyGit` - Open lazygit UI
- `:LazyGitConfig` - Open lazygit configuration
- `:LazyGitCurrentFile` - Open lazygit filtered to current file
- `:LazyGitFilter` - Open with filter
- `:LazyGitFilterCurrentFile` - Filter to current file

**Git Workflow:**
- Stage/unstage files with space
- Commit with `<C-c>`
- Push/pull with `<C-p>`/`<C-l>`
- View history/diffs in the UI

### bufferline - Buffer Tabs
Buffer tabs with visual indicators for open files.

**Usage:**
- Click tabs with mouse to switch buffers
- `<Tab>` - Next buffer
- `<S-Tab>` - Previous buffer
- `<leader>bd` - Delete current buffer

**Features:**
- Shows modified buffers with a visual indicator
- Color-coded by file type
- Close button (×) on each tab
- Displays buffer numbers for quick access

### nvim-treesitter - Syntax Highlighting
Advanced syntax highlighting and code parsing using Tree-sitter.

**Features:**
- Superior syntax highlighting compared to regex
- Accurate code indentation
- Text objects for code blocks
- Better code navigation and refactoring

**Usage:**
- Automatically loads for supported languages
- Use text objects in visual mode:
  - `vaf` - Visual select around function
  - `vif` - Visual select inside function
  - `vac` - Visual select around class
  - `vic` - Visual select inside class
- Use `d` + text object to delete: `daf`, `dif`, etc.
- Use `c` + text object to change: `caf`, `cif`, etc.

**Maintenance Commands:**
- `:TSUpdate` - Update all installed parsers
- `:TSInstall <lang>` - Install specific language parser
- `:TSUninstall <lang>` - Remove parser
- `:TSInfo` - Show parser information

### mason - LSP Manager
Portable package manager for LSP, DAP, linters, and formatters.

**Usage:**
- `:Mason` - Open Mason UI
- Navigate with `j`/`k` or arrow keys
- Press `<Enter>` to install/uninstall
- Use `/` to search packages
- Press `?` for help

**Commands:**
- `:MasonInstall <server>` - Install language server
- `:MasonUninstall <server>` - Uninstall server
- `:MasonUpdate` - Update package registry
- `:MasonLog` - View Mason logs

**Package Types:**
- **LSP**: Language servers for code intelligence
- **DAP**: Debug Adapter Protocol for debugging
- **Formatter**: Code formatters
- **Linter**: Static analysis tools

## 🔄 Customization

### Adding New Plugins

1. Create file in `plugins/` directory:
```lua
-- plugins/your-plugin.lua
return {
    "author/plugin-name",
    opts = {
        -- plugin options
    }
}
```

2. Restart Neovim or run `:Lazy sync`

### Modifying Key Mappings

Edit `lua/keymaps.lua`:
```lua
vim.keymap.set('n', '<leader>your-key', ':your-command<CR>', { desc = "Description" })
```

### Changing Options

Edit `lua/options.lua`:
```lua
vim.opt.option_name = value
```

## 🚀 Performance Optimizations

- **Lazy Loading**: Plugins load when needed
- **Big File Detection**: Disables heavy features for large files
- **Tree-sitter**: Efficient syntax highlighting
- **LSP**: On-demand language server startup

## 🐛 Troubleshooting

### Common Issues

**Plugin not working:**
```bash
:Lazy sync          # Reinstall plugins
:checkhealth        # Run health checks
```

**LSP not starting:**
```bash
:LspInfo            # Check LSP status
:Mason               # Install language servers
```

**Key mappings not working:**
```bash
:verbose map <key>  # Check what's mapped to key
```

### Performance Issues

1. **Startup Time**:
```bash
nvim --startuptime startup.log
```

2. **Profile Plugins**:
```bash
:Lazy profile
```

## 📚 Learning Resources

- **Neovim**: `:help` or `:help topic`
- **Plugin Help**: `:h plugin-name`
- **Key Mappings**: `:map` or `:verbose map`
- **Options**: `:h option-name`

## 🤝 Contributing

Feel free to customize this configuration for your needs! The modular structure makes it easy to:

1. Add/remove plugins
2. Modify key mappings
3. Adjust editor options
4. Configure LSP servers

---

**Happy Coding! 🎉**
