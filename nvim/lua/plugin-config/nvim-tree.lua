return function()
    local nvim_tree = require('nvim-tree')
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
    nvim_tree.setup({
        sort_by = "case_sensitive",
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        git = {
            enable = false
        },
        update_focused_file = {
            enable = true,
            update_root = true
        },
        view = {
            width = 30,
            hide_root_folder = true,
            mappings = {
                list = {
                    { key = "u", action = "dir_up" },
                },
            },
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    })
end
