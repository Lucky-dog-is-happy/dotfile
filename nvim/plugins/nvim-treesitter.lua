-- Configuration for nvim-treesitter syntax highlighting and parsing
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
    "nvim-treesitter/nvim-treesitter",
    -- Build command to update parsers
    -- :TSUpdate will update all installed parsers
    build = ":TSUpdate",
    -- Event to load treesitter when opening files
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        -- Ensure these languages are installed
        ensure_installed = {
            "bash",
            "c",
            "cpp",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "rust",
            "vim",
            "vimdoc",
        },
        -- Auto-install missing parsers
        auto_install = true,
        -- Enable syntax highlighting
        highlight = {
            enable = true,
            -- Disable additional vim regex highlighting
            additional_vim_regex_highlighting = false,
        },
        -- Enable indentation based on treesitter
        indent = {
            enable = true,
        },
        -- Text objects for better navigation
        textobjects = {
            select = {
                enable = true,
                -- lookahead for better text object selection
                lookahead = true,
                -- Key mappings for text objects
                -- af: around function
                -- if: inside function
                -- ac: around class
                -- ic: inside class
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = "@class.inner",
                },
            },
        },
    },
}
