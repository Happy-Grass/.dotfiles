local status, lualine = pcall(require, "lualine")
if not status then
	vim.notify("Lualine not found!")
	return
end
local config = {
	options = {
		theme = "auto",
		height = 1,
		component_separators = {
			left = "",
			right = "",
		},
		section_separators = {
			left = " ",
			right = "",
		},
		globalstatus = true,
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			"encoding",
			"filesize",
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " },
			},
		},
		lualine_c = {},
		lualine_x = {
			-- {
			-- 	"fileformat",
			-- 	symbols = {
			-- 		unix = "",
			-- 		dos = "",
			-- 		mac = "",
			-- 	},
			-- },
		},
		lualine_y = { "branch" },
		lualine_z = {
			{ "diff", symbols = { added = " ", modified = "柳 ", removed = " " } },
			"progress",
			"location",
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
}
local function ins_left(component)
	table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
	table.insert(config.sections.lualine_x, component)
end

ins_left({
	"filename",
})
-- ins_left({
-- 	function()
-- 		return "%="
-- 	end,
-- })

ins_right({
	function()
		local msg = "no active lsp"
		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
		local clients = vim.lsp.get_active_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return msg
	end,
	icon = " lsp:",
})

ins_right({
	"lsp_progress",
	separators = {
		component = " ",
		-- progress = " | ",
		-- message = { pre = "(", post = ")" },
		percentage = { pre = "", post = "%% " },
		title = { pre = "", post = ": " },
		lsp_client_name = { pre = "[", post = "]" },
		spinner = { pre = "", post = "" },
		-- message = { commenced = "In Progress", completed = "Completed" },
	},
	display_components = { "spinner", { "title", "percentage" } }, --"lsp_client_name"title, message"
	timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
	spinner_symbols = { "🌑 ", "🌒 ", "🌓 ", "🌔 ", "🌕 ", "🌖 ", "🌗 ", "🌘 " },
})
lualine.setup(config)
