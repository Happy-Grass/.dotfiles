vim.o.history = 200  -- save more history commands
vim.o.backup = false  -- disable automatic backup
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.hidden = true
vim.o.wrap = false  -- disable automatic wraping line
vim.o.autoindent = true  -- autoindent
vim.o.smartindent = true

vim.o.tabstop = 4
vim.o.hlsearch = true  -- disable hignlighting when searching
vim.o.incsearch = true  --search when typing
-- cancel auto comment
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"r", "c", "o"}
