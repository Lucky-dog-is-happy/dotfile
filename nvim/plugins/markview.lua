-- Configuration for enhanced markdown editing
-- https://github.com/OXY2DEV/markview.nvim
return {
    "OXY2DEV/markview.nvim",
    ft = { "markdown", "quarto", "rmd" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        -- Enable all builtin features
        modes = { "n", "i", "c" },
        -- Filetypes to enable
        filetypes = { "markdown", "quarto", "rmd" },
        -- Markdown rendering options
        render_modes = { "n", "i" },
        -- Customization options
        headings = {
            enable = true,
            shift_width = 4,
            heading_1 = {
                style = "icon",
                icon = "󰌕 ",
                sign = "󰌕 "
            },
            heading_2 = {
                style = "icon",
                icon = "󰌖 ",
                sign = "󰌖 "
            },
            heading_3 = {
                style = "icon",
                icon = "󰌗 ",
                sign = "󰌗 "
            },
            heading_4 = {
                style = "icon",
                icon = "󰌘 ",
                sign = "󰌘 "
            },
            heading_5 = {
                style = "icon",
                icon = "󰌙 ",
                sign = "󰌙 "
            },
            heading_6 = {
                style = "icon",
                icon = "󰌚 ",
                sign = "󰌚 "
            },
        },
        code_blocks = {
            enable = true,
            style = "minimal",
            sign_hl = "MarkviewCodeSign",
            hl = "MarkviewCode",
        },
        inline_codes = {
            enable = true,
            hl = "MarkviewInlineCode",
        },
        blockquotes = {
            enable = true,
            default = {
                style = "bordered",
                border = "▐",
                border_hl = "MarkviewBlockQuoteDefault",
            },
            -- Custom blockquote types
            types = {
                note = {
                    style = "bordered",
                    border = "󰋼",
                    border_hl = "MarkviewBlockQuoteNote",
                    title = "󰋼 Note",
                    title_hl = "MarkviewBlockQuoteNoteTitle",
                },
                tip = {
                    style = "bordered",
                    border = "󰌶",
                    border_hl = "MarkviewBlockQuoteTip",
                    title = "󰌶 Tip",
                    title_hl = "MarkviewBlockQuoteTipTitle",
                },
                warning = {
                    style = "bordered",
                    border = "󰀪",
                    border_hl = "MarkviewBlockQuoteWarning",
                    title = "󰀪 Warning",
                    title_hl = "MarkviewBlockQuoteWarningTitle",
                },
                danger = {
                    style = "bordered",
                    border = "󰀰",
                    border_hl = "MarkviewBlockQuoteDanger",
                    title = "󰀰 Danger",
                    title_hl = "MarkviewBlockQuoteDangerTitle",
                },
            },
        },
        horizontal_rules = {
            enable = true,
            hl = "MarkviewHr",
        },
        list_items = {
            enable = true,
            shift_width = 4,
            indent_size = 2,
            -- Bullets for different list levels
            markers = {
                ["-"] = "-",
                ["+"] = "+",
                ["*"] = "*",
            },
        },
        tables = {
            enable = true,
            style = "simple",
            head_hl = "MarkviewTableHead",
            row_hl = "MarkviewTableRow",
            filler_hl = "MarkviewTableFill",
        },
        links = {
            enable = true,
            link_hl = "MarkviewLink",
            wiki_link_hl = "MarkviewWikiLink",
            image_hl = "MarkviewImage",
        },
        checkboxes = {
            enable = true,
            checked = {
                icon = "󰄲 ",
                hl = "MarkviewCheckboxChecked",
            },
            unchecked = {
                icon = "󰄱 ",
                hl = "MarkviewCheckboxUnchecked",
            },
            custom = {
                pending = {
                    icon = "󰥔 ",
                    hl = "MarkviewCheckboxPending",
                },
                important = {
                    icon = "󰅾 ",
                    hl = "MarkviewCheckboxImportant",
                },
            },
        },
        -- Escape configuration
        escape = {
            from = "%",
            to = "%%",
        },
    },
    -- Key mappings
    keys = {
        -- Toggle markdown rendering
        { "<leader>m", "<cmd>Markview toggle<cr>", desc = "Toggle Markdown View", ft = "markdown" },
    },
}