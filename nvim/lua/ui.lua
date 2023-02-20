vim.wo.number = true
vim.wo.numberwidth = 4
vim.wo.relativenumber = false
vim.wo.cursorline = true
vim.o.wildmenu = true
vim.o.wildmode = "full:lastused"

vim.o.showtabline = 2  -- always show tabline
vim.o.showmode = false -- donot need the info when use a plugin

vim.o.splitright=true
vim.o.splitbelow=true
vim.o.termguicolors=true
vim.o.signcolumn="yes"

require("plugin-config/colorscheme")
require("plugin-config/lualine")
require("plugin-config/bufferline")
require("lsp/lsp-ui")
require("dap/dap-ui")
