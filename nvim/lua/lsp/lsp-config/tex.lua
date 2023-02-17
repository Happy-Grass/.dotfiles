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
local texlab_build_status = vim.tbl_add_reverse_lookup {
        Success = 0,
        Error = 1,
        Failure = 2,
        Cancelled = 3,
    }

local texlab_forward_status = vim.tbl_add_reverse_lookup {
        Success = 0,
        Error = 1,
        Failure = 2,
        Unconfigured = 3,
    }

local function buf_build(bufnr)
    bufnr = util.validate_bufnr(bufnr)
    local texlab_client = util.get_active_client_by_name(bufnr, 'texlab')
    local params = {
        textDocument = { uri = vim.uri_from_bufnr(bufnr) },
    }
    if texlab_client then
        texlab_client.request('textDocument/build', params, function(err, result)
            if err then
                error(tostring(err))
            end
            print('Build ' .. texlab_build_status[result.status])
        end, bufnr)
    else
        print 'method textDocument/build is not supported by any servers active on the current buffer'
    end
end

local function buf_search(bufnr)
    bufnr = util.validate_bufnr(bufnr)
    local texlab_client = util.get_active_client_by_name(bufnr, 'texlab')
    local params = {
        textDocument = { uri = vim.uri_from_bufnr(bufnr) },
        position = { line = vim.fn.line '.' - 1, character = vim.fn.col '.' },
    }
    if texlab_client then
        texlab_client.request('textDocument/forwardSearch', params, function(err, result)
            if err then
                error(tostring(err))
            end
            print('Search ' .. texlab_forward_status[result.status])
        end, bufnr)
    else
        print 'method textDocument/forwardSearch is not supported by any servers active on the current buffer'
    end
end

local lsp_flags = {
    debounce_text_changes = 150,
}
require('lspconfig').texlab.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    cmd = { 'texlab' },
    filetypes = { 'tex', 'plaintex', 'bib' },
    root_dir = function(fname)
        return util.root_pattern '.latexmkrc'(fname) or util.find_git_ancestor(fname)
    end,
    single_file_support = true,
    settings = {
        texlab = {
            rootDirectory = nil,
            build = {
                executable = 'latexmk',
                args = { '-pdf', '-interaction=nonstopmode', '-synctex=1', '%f' },
                onSave = false,
                forwardSearchAfter = false,
            },
            auxDirectory = '.',
            forwardSearch = {
                executable = nil,
                args = {},
            },
            chktex = {
                onOpenAndSave = false,
                onEdit = false,
            },
            diagnosticsDelay = 300,
            latexFormatter = 'latexindent',
            latexindent = {
                ['local'] = nil, -- local is a reserved keyword
                modifyLineBreaks = false,
            },
            bibtexFormatter = 'texlab',
            formatterLineLength = 80,
        },
    },
    commands = {
        TexlabBuild = {
            function()
                buf_build(0)
            end,
            description = 'Build the current buffer',
        },
        TexlabForward = {
            function()
                buf_search(0)
            end,
            description = 'Forward search from current position',
        },
    },
    docs = {
        description = [[
    https://github.com/latex-lsp/texlab
    A completion engine built from scratch for (La)TeX.
    See https://github.com/latex-lsp/texlab/wiki/Configuration for configuration options.
    ]],
    },
}
