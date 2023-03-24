local util = require("lspconfig.util")
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    require("keybindings").mapLSP(bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}
local cmd = { "clangd" }
local filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
local root_dir = util.root_pattern(
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git"
)

require("lspconfig").clangd.setup({
    on_attach = on_attach,
    lsp_flags = lsp_flags,
    cmd = cmd,
    root_dir = root_dir,
    filetypes = filetypes,
    single_file_support = true,
})
