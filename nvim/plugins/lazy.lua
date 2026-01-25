-- Configuration for luarocks support in lazy.nvim
-- https://github.com/folke/lazy.nvim
return {
    "folke/lazy.nvim",
    opts = {
        -- Disable hererocks to avoid luarocks warnings
        rocks = {
            hererocks = false,
        },
    },
}