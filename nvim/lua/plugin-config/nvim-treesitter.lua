local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("Nvim-treesitter not found!")
    return
end

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
-- 开启 Folding 模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99
