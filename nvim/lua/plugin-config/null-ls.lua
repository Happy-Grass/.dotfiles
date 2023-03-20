return function()
    local null_ls = require("null-ls")

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    local sources = {
        formatting.black,
        diagnostics.flake8,
        formatting.stylua,
        diagnostics.luacheck,
        formatting.latexindent,
        diagnostics.proselint,
        formatting.beautysh,
        diagnostics.shellcheck,
    }
    null_ls.setup({
        sources = sources,
    })
end