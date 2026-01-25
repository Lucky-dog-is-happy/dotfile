-- Configuration for snacks.nvim utility plugin
-- https://github.com/folke/snacks.nvim
return {
    "folke/snacks.nvim",
    -- High priority to load early
    priority = 1000,
    -- Load immediately, not lazy
    lazy = false,
    opts = {
        -- Big file optimization
        bigfile = { enabled = true },
        -- Notification system
        notifier = { enabled = true },
        -- Quick file loading
        quickfile = { enabled = true },
        -- Word counting
        words = { enabled = true },
        -- Status column
        statuscolumn = {
            enabled = true,
            left = { 'mark', 'sign' },
            right = { 'fold' },
            folds = { open = false },
            git = { patterns = { 'GitSign' } },
        },
        -- Toggle utilities
        toggle = { enabled = true },
        -- Terminal integration (disabled)
        terminal = { enabled = false },
        -- Indentation guides
        indent = { enabled = true },
        -- Input utilities
        input = { enabled = true },
        -- Scope utilities
        scope = { enabled = true },
        -- Scroll utilities
        scroll = { enabled = true },
        -- Disable resource-intensive features
        picker = { enabled = false },
        explorer = { enabled = false },
        image = { enabled = false },
        dashboard = { enabled = false },
        -- Notification settings
        notify = {
            enabled = true,
            -- Notification timeout in milliseconds
            timeout = 3000,
        },
    },
    -- Key mappings for snacks.nvim
    keys = {
        -- <leader>un: dismiss all notifications
        { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
        -- <leader>bd: delete current buffer
        { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
        -- <leader>gg: open lazygit
        { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
        -- <leader>gl: open lazygit log
        { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Log" },
        -- <leader>gf: open lazygit for current file
        { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "Lazygit Current File" },
        -- <leader>gs: open git status
        { "<leader>gs", function() Snacks.lazygit.status() end, desc = "Git Status" },
        -- Terminal bindings removed (terminal disabled)
        -- <c-/>: toggle terminal
        -- { "<c-/>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
        -- <c-_>: toggle terminal (alternative key)
        -- { "<c-_>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
    },
    -- Initialization function
    init = function()
        -- Create autocommand for VeryLazy event
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                -- Toggle mappings for various options
                -- <leader>us: toggle spelling
                -- <leader>uw: toggle wrap
                -- <leader>ud: toggle diagnostics
                -- <leader>uh: toggle inlay hints
                Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
                Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
                Snacks.toggle.diagnostics():map("<leader>ud")
                Snacks.toggle.inlay_hints():map("<leader>uh")
            end,
        })
    end,
}
