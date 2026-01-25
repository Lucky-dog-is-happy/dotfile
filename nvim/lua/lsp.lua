-- Remove global default LSP key mappings
-- These are removed to avoid conflicts with custom keybindings
vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")

-- Create LSP key mappings
-- LspAttach: Event triggered after an LSP Client performs "initialize" and attaches to a buffer.
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function (args)
        local keymap = vim.keymap
        local lsp = vim.lsp
	    local bufopts = { noremap = true, silent = true }

        -- Set LSP key mappings
        -- gr: show references
        -- gd: go to definition
        -- <space>rn: rename symbol
        -- K: show hover documentation
        -- <space>f: format current buffer
        keymap.set("n", "gr", lsp.buf.references, bufopts)
        keymap.set("n", "gd", lsp.buf.definition, bufopts)
        keymap.set("n", "<space>rn", lsp.buf.rename, bufopts)
        keymap.set("n", "K", lsp.buf.hover, bufopts)
        keymap.set("n", "<space>f", function()
            vim.lsp.buf.format({ async = true })
        end, bufopts)
    end
})

-- Enable specified LSP servers
-- ty: Python language server
-- clangd: C/C++ language server
-- rust_analyzer: Rust language server
vim.lsp.enable({ "ty", "clangd", "rust_analyzer" })
