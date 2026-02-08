-- Key mappings configuration
-- Keymaps from vimrc

-- Set leader key for custom mappings
vim.g.mapleader = ' '

-- Save and quit shortcuts
-- <leader>w: save current file
-- <leader>q: quit current window
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Fzf-lua fuzzy finder shortcuts
-- <leader>lf: find files
-- <leader>lb: find buffers
-- <leader>ll: grep in files
vim.keymap.set('n', '<leader>lf', '<cmd>FzfLua files<CR>')
vim.keymap.set('n', '<leader>lb', '<cmd>FzfLua buffers<CR>')
vim.keymap.set('n', '<leader>ll', '<cmd>FzfLua live_grep<CR>')

-- BufferLine toggle buffer shortcuts
-- <leader><Tab>: Buffer Next
-- <leader><S-Tab>: Buffer Prev
vim.keymap.set('n', '<leader><Tab>', '<cmd>BufferLineCycleNext<cr>')
vim.keymap.set('n', '<leader><S-Tab>', '<cmd>BufferLineCyclePrev<cr>')


-- Cursor movement shortcuts
-- <C-l>: move to end of line in normal mode
-- <C-l>: move to end of line in insert mode
-- <C-h>: move to beginning of line in normal mode
-- <C-h>: move to beginning of line in insert mode
vim.keymap.set('n', '<C-l>', '$')
vim.keymap.set('i', '<C-l>', '<Esc>A')
vim.keymap.set('n', '<C-h>', '^')
vim.keymap.set('i', '<C-h>', '<Esc>I')
