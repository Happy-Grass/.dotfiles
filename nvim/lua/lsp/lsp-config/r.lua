local util = require("lspconfig.util")
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    require("keybindings").mapLSP(bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}
require('lspconfig').r_language_server.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    cmd = { 'R', '--slave', '-e', 'languageserver::run()' },
    filetypes = { 'r', 'rmd' },
    root_dir = function(fname)
        return util.find_git_ancestor(fname) or vim.loop.os_homedir()
    end,
    log_level = vim.lsp.protocol.MessageType.Warning,
}
