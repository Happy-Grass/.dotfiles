return function()
	local telescope = require("telescope")
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
	vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

	telescope.setup({
		on_highlights = function(hl, c)
			local prompt = "#2d3149"
			hl.TelescopeNormal = {
				bg = c.bg_dark,
				fg = c.fg_dark,
			}
			hl.TelescopeBorder = {
				bg = c.bg_dark,
				fg = c.bg_dark,
			}
			hl.TelescopePromptNormal = {
				bg = prompt,
			}
			hl.TelescopePromptBorder = {
				bg = prompt,
				fg = prompt,
			}
			hl.TelescopePromptTitle = {
				bg = prompt,
				fg = prompt,
			}
			hl.TelescopePreviewTitle = {
				bg = c.bg_dark,
				fg = c.bg_dark,
			}
			hl.TelescopeResultsTitle = {
				bg = c.bg_dark,
				fg = c.bg_dark,
			}
		end,
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown({}),
			},
		},
	})
	telescope.load_extension("ui-select")
end
