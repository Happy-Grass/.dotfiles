vim.o.history = 200  -- save more history commands
vim.o.backup = false  -- disable automatic backup
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.hidden = true
vim.o.wrap = false  -- disable automatic wraping line
vim.o.autoindent = true  -- autoindent
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.softtabstop=4
vim.o.shiftwidth=4
vim.o.hlsearch = false  -- disable hignlighting when searching
vim.o.incsearch = true  --search when typing
vim.o.mouse = ''
vim.opt.shortmess:append({I =true})
-- vim.o.mousemodel = extend
-- cancel auto comment
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"r", "c", "o"}
