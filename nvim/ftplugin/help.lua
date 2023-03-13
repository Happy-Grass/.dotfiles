-- show the help vertical
vim.api.nvim_create_autocmd({'BufWinEnter'}, {
    pattern = '<buffer>',
    command = 'wincmd L'
})
