local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			-- vim.fn["vsnip#anonymous"](args.body)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "luasnip", max_item_count = 5 },
		{ name = "nvim_lsp", max_item_count = 5 },
		-- { name = "vsnip" },
		{ name = "nvim_lsp_signature_help" },
		{ name = "buffer", max_item_count = 5 },
		{ name = "path", max_item_count = 5 },
	}),
	mapping = require("keybindings").cmp(cmp),
	formatting = require("lsp.lsp-ui").formatting,
})

-- Use buffer source for `/`.
cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
