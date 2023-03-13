local util = require("lspconfig.util")
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    require("keybindings").mapLSP(bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}
local bin_name = 'bash-language-server'
local cmd = { bin_name, 'start' }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name, 'start' }
end

require('lspconfig').bashls.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    cmd = cmd,
    cmd_env = {
      GLOB_PATTERN = vim.env.GLOB_PATTERN or '*@(.sh|.inc|.bash|.command)',
    },
    filetypes = { 'sh' },
    root_dir = util.find_git_ancestor,
}
