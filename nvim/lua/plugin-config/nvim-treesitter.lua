return function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
        ensure_installed = { "c", "cpp", "bash", "json", "vim", "lua", "python", "latex", "markdown", "markdown_inline" },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<CR>",
                node_incremental = "<CR>",
                node_decremental = "<BS>",
                scope_incremental = "<TAB>",
            },
        },
        indent = {
            enable = false,
        },
    })
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldlevel = 99
end
