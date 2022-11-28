vim.wo.number = true
vim.wo.numberwidth = 4
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.o.wildmenu = true
vim.o.wildmode = "lastused:full"

vim.o.showtabline = 2  -- always show tabline
vim.o.showmode = false -- donot need the info when use a plugin

require("plugin-config.colorscheme")
require("plugin-config.lualine")
require("plugin-config.bufferline")
require("lsp.lsp-ui")
require("dap.dap-ui")
