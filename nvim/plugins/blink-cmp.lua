-- Configuration for blink.cmp completion plugin
-- https://github.com/saghen/blink.cmp
return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "*",
    opts = {
        -- Key mappings for completion
        -- preset: 'enter' for enter to accept, similar to built-in completions
        -- <Up>/<Down>: select previous/next item
        -- <Tab>/<S-Tab>: select next/previous item
        -- <C-b>/<C-f>: scroll documentation up/down
        -- <C-k>: toggle signature help
        keymap = {
            preset = "enter",
            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
            ["<Tab>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },
            ["<C-b>"] = { "scroll_documentation_up", "fallback" },
            ["<C-f>"] = { "scroll_documentation_down", "fallback" },
            ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
        },
        -- Appearance settings
        -- nerd_font_variant: 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        appearance = {
            nerd_font_variant = "mono",
        },
        -- Completion sources
        -- default: built-in sources (lsp, path, snippets, buffer)
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        -- Fuzzy matching implementation
        -- prefer_rust_with_warning: use Rust fuzzy matcher when available
        fuzzy = { implementation = "prefer_rust_with_warning" },
        -- Completion settings
        -- keyword: match keyword range
        -- menu: draw menu with treesitter highlighting
        -- trigger: show completions on trigger character
        -- documentation: auto-show documentation
        completion = {
            keyword = { range = "prefix" },
            menu = {
                draw = {
                    treesitter = { "lsp" },
                },
            },
            trigger = { show_on_trigger_character = true },
            documentation = {
                auto_show = true,
            },
        },
        -- Signature help settings
        signature = { enabled = true },
    },
    opts_extend = { "sources.default" },
}
