vim.g.mapleader = ","
vim.g.maplocalleader = ","

local opt = { noremap = true, silent = true }
local bufopt = { noremap = true, silent = true, buffer = bufnr }
local map = vim.keymap.set
local pluginKeys = {}

------------------------------Basic Keymap------------------------------
map("n", "L", "$", opt) -- quickly jump to the line prefix, the end of line
map("n", "H", "^", opt)
map("n", "<c-u>", "9k", opt)
map("n", "<c-d>", "9j", opt)
map("n", "<leader>sh", ":split<cr>", opt)
map("n", "<leader>sv", ":vsplit<cr>", opt)
map("n", "-", "ddp", opt) -- move line down
map("n", "_", "ddkP", opt) -- move line up
map("v", "J", ":move '>+1<cr>gv-gv", opt)
map("v", "K", ":move '<-2<cr>gv-gv", opt)
map("i", "<c-j>", "<esc>o", { noremap = true })
map("i", "<c-k>", "<esc>O", { noremap = true })
map("i", "<c-u>", "<esc>gUiwea", opt) -- Let the Word be UpperCase

------------------------------Enhance Edit------------------------------
------------ Add pairs "",'', [],(), to a word
map("n", '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel', opt)
map("i", '<leader>"', '<esc>viw<esc>a"<esc>bi"<esc>lela', opt)
map("n", "<leader>(", "viw<esc>a)<esc>bi(<esc>lel", opt)
map("i", "<leader>(", "<esc>viw<esc>a)<esc>bi(<esc>lela", opt)
map("n", "<leader>[", "viw<esc>a]<esc>bi[<esc>lel", opt)
map("i", "<leader>[", "<esc>viw<esc>a]<esc>bi[<esc>lela", opt)
map("n", "<leader><", "viw<esc>a><esc>bi<<esc>lel", opt)
map("i", "<leader><", "<esc>viw<esc>a><esc>bi<<esc>lela", opt)
map("n", "<leader>{", "viw<esc>a}<esc>bi{<esc>lel", opt)
map("i", "<leader>{", "<esc>viw<esc>a}<esc>bi{<esc>lela", opt)
map("n", "<leader>'", "viw<esc>a'<esc>bi'<esc>lel", opt)
map("i", "<leader>'", "<esc>viw<esc>a'<esc>bi'<esc>lela", opt)
------------ Add pairs ',",[,(,{,< to a block
map("v", "<leader>'", "<esc>`<i'<esc>`>a'<esc>", opt)
map("v", '<leader>"', '<esc>`<i"<esc>`>a"<esc>', opt)
map("v", "<leader>{", "<esc>`<i{<esc>`>a}<esc>", opt)
map("v", "<leader>(", "<esc>`<i(<esc>`>a)<esc>", opt)
map("v", "<leader>[", "<esc>`<i[<esc>`>a]<esc>", opt)
map("v", "<leader><", "<esc>`<i<<esc>`>a><esc>", opt)

------------------------------Switch Buffer------------------------------
map("n", "[b", ":bprevious<cr>", opt)
map("n", "]b", ":bnext<cr>", opt)
map("n", "[B", ":bfirst<cr>", opt)
map("n", "]B", ":blast<cr>", opt)
map("n", "<leader>bd", ":bp | bd #<cr>", opt)
------------------------------Page Up and Down------------------------------
------------ Add pairs "",'', [],(), to a word
map("c", "<c-p>", "<up>", opt)
map("c", "<c-n>", "<down>", opt)
map("n", "<leader>m", ":NvimTreeToggle<cr>", opt)
------------------------------Session Manager------------------------------
map("n", "<leader>ml", ":SessionManager load_session<cr>", opt)
map("n", "<leader>md", ":SessionManager delete_session<cr>", opt)
map("n", "<leader>ms", ":SessionManager save_current_session<cr>", opt)
------------------------------Neoclip------------------------------
map("n", "<leader>cc", ":Telescope neoclip<cr>", opt)
map("n", "<leader>q", ":Telescope macroscope<cr>", opt)

------------------------------Plugin keys------------------------------
pluginKeys.cmp = function(cmp)
	local feedkey = function(key, mode)
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
	end
	local has_words_before = function()
		local line, col = unpack(vim.api.nvim_win_get_cursor(0))
		return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
	end

	return {
		-- preview
		["<C-p>"] = cmp.mapping.select_prev_item(),
		-- next
		["<C-n>"] = cmp.mapping.select_next_item(),
		-- show cmp
		["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		-- hidde cmp
		["<A-,>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- Accept currently selected item. If none selected, `select` first item.
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		-- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		-- snippets 跳转
		["<A-l>"] = cmp.mapping(function(_)
			if vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			end
		end, { "i", "s" }),
		["<A-h>"] = cmp.mapping(function()
			if vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
			end
		end, { "i", "s" }),
		-- super Tab
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			elseif has_words_before() then
				cmp.complete()
			else
				fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
			end
		end, { "i", "s" }),
		-- -- end of super Tab
	}
end

--------------------------------format----------------------------------
map("n", "<leader>f", ":lua vim.lsp.buf.format({async=true})<CR>", opt)
--------------------------------lsp----------------------------------
pluginKeys.mapLSP = function(bufopts)
	map("n", "gD", vim.lsp.buf.declaration, bufopts)
	--keymap('n', 'gd', vim.lsp.buf.definition, bufopts)
	--keymap('n', 'K', vim.lsp.buf.hover, bufopts)
	map("n", "gi", vim.lsp.buf.implementation, bufopts)
	map("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
	map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts)
	map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
	map("n", "<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	map("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
	--keymap('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
	--keymap('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
	map("n", "gr", vim.lsp.buf.references, bufopts)
	map("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, bufopts)
end

------------------------------lspsaga--------------------------------
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opt)
map({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
map("n", "<leader>r", "<cmd>Lspsaga rename<CR>", opt)
map("n", "pd", "<cmd>Lspsaga peek_definition<CR>", opt)
map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opt)
map("n", "pt", "<cmd>Lspsaga peek_type_definition<CR>", opt)
map("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>", opt)
map("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
map("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opt)
map("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", opt)
-- diagnsotic jump can use `<c-o>` to jump back
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opt)
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opt)
map("n", "[E", function()
	require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opt)
map("n", "]E", function()
	require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opt)
map("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opt)
map("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<CR>", opt)
map("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<CR>", opt)
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opt)
map({ "n", "t" }, "<A-t>", "<cmd>Lspsaga term_toggle<CR>", opt)

--------------------------------nvim dap----------------------------------
map({ "i", "n", "v" }, "<F5>", "<cmd>lua require'dap'.continue()<CR>", bufopt)
map({ "i", "n", "v" }, "<F10>", "<cmd>lua require'dap'.step_over()<CR>", bufopt)
map({ "i", "n", "v" }, "<F11>", "<cmd>lua require'dap'.step_into()<CR>", bufopt)
map({ "i", "n", "v" }, "<F12>", "<cmd>lua require'dap'.step_over()<CR>", bufopt)
map(
	{ "i", "n", "v" },
	"<F9>",
	"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
	{ silent = true, noremap = true, buffer = bufnr }
)

return pluginKeys
