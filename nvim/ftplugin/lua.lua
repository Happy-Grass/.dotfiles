vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"r", "c", "o"}
require("lsp/lsp-config/lua")
