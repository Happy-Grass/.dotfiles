return function()
	local null_ls = require("null-ls")

	local formatting = null_ls.builtins.formatting
	local diagnostics = null_ls.builtins.diagnostics

	local sources = {
		formatting.yapf,
		diagnostics.flake8,
		formatting.stylua,
		diagnostics.luacheck,
		formatting.latexindent,
		-- diagnostics.vale,
		formatting.beautysh,
		diagnostics.shellcheck,
		formatting.clang_format,
		diagnostics.cpplint,
	}
	null_ls.setup({
		sources = sources,
	})
end
