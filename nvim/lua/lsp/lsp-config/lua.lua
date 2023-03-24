-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
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
    debounce_text_changes = 10,
}
local root_files = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
}

local bin_name = 'lua-language-server'
local cmd = { bin_name }

if vim.fn.has 'win32' == 1 then
    cmd = { 'cmd.exe', '/C', bin_name }
end

require('lspconfig').lua_ls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    cmd = cmd,
    filetypes = { 'lua' },
    root_dir = function(fname)
        local root = util.root_pattern(unpack(root_files))(fname)
        if root and root ~= vim.env.HOME then
            return root
        end
        root = util.root_pattern 'lua/'(fname)
        if root then
            return root .. '/lua/'
        end
        return util.find_git_ancestor(fname)
    end,
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
    settings = { Lua = { telemetry = { enable = false } } },
}
