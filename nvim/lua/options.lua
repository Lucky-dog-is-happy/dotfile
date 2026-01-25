-- Basic editor options configuration
-- Hint: use `:h <option>` to figure out the meaning if needed

-- Clipboard and completion settings
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.mouse = 'a' -- allow the mouse to be used in nvim

-- Tab and indentation settings
-- Tab: number of visual spaces per TAB
-- softtabstop: number of spaces in tab when editing
-- shiftwidth: insert 4 spaces on a tab
-- expandtab: tabs are spaces, mainly because of Python
vim.opt.tabstop = 4 
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true 

-- UI configuration
-- number: show absolute line numbers
-- numberwidth: minimal width for line number column
-- cursorline: highlight cursor line underneath the cursor horizontally
-- splitbelow: open new vertical split below current window
-- splitright: open new horizontal splits to the right
-- termguicolors: enable 24-bit RGB color in the TUI
-- showmode: we are experienced, wo don't need the "-- INSERT --" mode hint
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.showmode = true 

-- Searching settings
-- incsearch: search as characters are entered
-- hlsearch: do not highlight matches
-- ignorecase: ignore case in searches by default
-- smartcase: but make it case sensitive if an uppercase is entered
vim.opt.incsearch = true 
vim.opt.hlsearch = true 
vim.opt.ignorecase = true 
vim.opt.smartcase = true 

-- Other editor settings
-- hidden: allow hidden buffers
-- scrolloff: keep 5 lines visible when scrolling
-- backspace: allow backspace over everything
-- showcmd: show command in status line
-- wildmenu: enhanced command line completion
-- smartindent: smart autoindenting
-- encoding: file encoding
vim.opt.hidden = true 
vim.opt.scrolloff = 5 
vim.opt.backspace = 'indent,eol,start' 
vim.opt.showcmd = true 
vim.opt.wildmenu = true 
vim.opt.smartindent = true 
vim.opt.encoding = 'utf-8' 

-- Colorscheme settings
-- background: set dark background
-- colorscheme: apply desert colorscheme
vim.opt.background = 'dark'
vim.cmd('colorscheme desert')
