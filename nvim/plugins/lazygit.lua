-- Configuration for lazygit Git TUI integration
-- https://github.com/kdheepak/lazygit.nvim
return {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- Commands provided by lazygit
    -- LazyGit: open lazygit
    -- LazyGitConfig: open lazygit config
    -- LazyGitCurrentFile: open lazygit for current file
    -- LazyGitFilter: open lazygit with filter
    -- LazyGitFilterCurrentFile: open lazygit filter for current file
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- Key mappings
    -- <leader>gg: open lazygit
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    -- Configuration settings
    config = function()
        -- Floating window settings
        vim.g.lazygit_floating_window_winblend = 0
        vim.g.lazygit_floating_window_scaling_factor = 0.9
        vim.g.lazygit_floating_window_corner_chars = { "╭", "╮", "╰", "╯" }
        vim.g.lazygit_use_custom_config_file_path = false
    end,
}
