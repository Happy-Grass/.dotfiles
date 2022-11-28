-- Modes
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"

-- set the leaderkey
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- local variable
local opt = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap.set

-- important keybindings
map("i", "jk", "<esc>", opt)
map("i", "<esc>", "<nop>", opt)
-- quickly jump to the line prefix, the end of line
map("n", "H", "^", opt)
map("n", "L", "$", opt)

-- edit my vimrc
map("n", "<leader>ev", ":split $MYVIMRC<cr>", opt)
map("n", "<leader>sv", ":source $MYVIMRC<cr>", opt)
------------------------------Enhance Editing------------------------------
-- add "",'', [],(), to a word
map("n", '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel', opt)
map("i", '<leader>"', '<esc>viw<esc>a"<esc>bi"<esc>lela', opt)
map("n", '<leader>(', 'viw<esc>a)<esc>bi(<esc>lel', opt)
map("i", '<leader>(', '<esc>viw<esc>a)<esc>bi(<esc>lela', opt)
map("n", '<leader>[', 'viw<esc>a]<esc>bi[<esc>lel', opt)
map("i", '<leader>[', '<esc>viw<esc>a]<esc>bi[<esc>lela', opt)
map("n", '<leader><', 'viw<esc>a><esc>bi<<esc>lel', opt)
map("i", '<leader><', '<esc>viw<esc>a><esc>bi<<esc>lela', opt)
map("n", '<leader>{', 'viw<esc>a}<esc>bi{<esc>lel', opt)
map("i", "<leader>{", '<esc>viw<esc>a}<esc>bi{<esc>lela', opt)
map("n", "<leader>'", "viw<esc>a'<esc>bi'<esc>lel", opt)
map("i", "<leader>'", "<esc>viw<esc>a'<esc>bi'<esc>lela", opt)
map("v", "J", ":move '>+1<cr>gv-gv", opt)
map("v", "K", ":move '<-2<cr>gv-gv", opt)
map("i", "<c-j>", "<esc>o", { noremap = true })
map("i", "<c-k>", "<esc>O", { noremap = true })
-- add '' to a block
-- map("v", "<leader>'", "`<i`>a'<esc>", opt)
map("i", "<c-u>", "<esc>gUiwea", opt) -- Let the Word be UpperCase
------------------------------Switch buffer------------------------------
map("n", "[b", ":bprevious<cr>", opt)
map("n", "]b", ":bnext<cr>", opt)
map("n", "[B", ":bfirst<cr>", opt)
map("n", "]B", ":blast<cr>", opt)
------------------------------Page Up and Down------------------------------
map("c", "<c-p>", "<up>", opt)
map("c", "<c-n>", "<down>", opt)
------------------------------Run-code------------------------------
map("n", "<F5>", "<cmd>!python3 %<cr>", opt)

------------------------------Plugin Keys------------------------------
local pluginKeys = {}
-- nvim-cmp 自动补全
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
		["<c-p>"] = cmp.mapping.select_prev_item(),
		-- next
		["<c-n>"] = cmp.mapping.select_next_item(),
		-- show cmp
		["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		-- hidde cmp
		["<A-,>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- 确认
		-- Accept currently selected item. If none selected, `select` first item.
		-- Set `select` to `false` to only confirm explicitly selected items.
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		-- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		-- 如果窗口内容太多，可以滚动
		-- ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		-- ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		-- -- snippets 跳转
		-- ["<C-l>"] = cmp.mapping(function(_)
		--   if vim.fn["vsnip#available"](1) == 1 then
		--     feedkey("<Plug>(vsnip-expand-or-jump)", "")
		--   end
		-- end, { "i", "s" }),
		-- ["<C-h>"] = cmp.mapping(function()
		--   if vim.fn["vsnip#jumpable"](-1) == 1 then
		--     feedkey("<Plug>(vsnip-jump-prev)", "")
		--   end
		-- end, { "i", "s" }),

		-- -- super Tab
		-- ["<Tab>"] = cmp.mapping(function(fallback)
		--   if cmp.visible() then
		--     cmp.select_next_item()
		--   elseif vim.fn["vsnip#available"](1) == 1 then
		--     feedkey("<Plug>(vsnip-expand-or-jump)", "")
		--   elseif has_words_before() then
		--     cmp.complete()
		--   else
		--     fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
		--   end
		-- end, { "i", "s" }),

		-- ["<S-Tab>"] = cmp.mapping(function()
		--   if cmp.visible() then
		--     cmp.select_prev_item()
		--   elseif vim.fn["vsnip#jumpable"](-1) == 1 then
		--     feedkey("<Plug>(vsnip-jump-prev)", "")
		--   end
		-- end, { "i", "s" }),
		-- -- end of super Tab
	} --
end
-- LSP
keymap('n', '<leader>e', vim.diagnostic.open_float, opts)
--keymap('n', '[d', vim.diagnostic.goto_prev, opts)
--keymap('n', ']d', vim.diagnostic.goto_next, opts)
keymap('n', '<leader>q', vim.diagnostic.setloclist, opts)
pluginKeys.mapLSP = function(bufopts)
	keymap('n', 'gD', vim.lsp.buf.declaration, bufopts)
	--keymap('n', 'gd', vim.lsp.buf.definition, bufopts)
	--keymap('n', 'K', vim.lsp.buf.hover, bufopts)
	keymap('n', 'gi', vim.lsp.buf.implementation, bufopts)
	keymap('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	keymap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	keymap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	keymap('n', '<leader>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	keymap('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
	--keymap('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
	--keymap('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
	keymap('n', 'gr', vim.lsp.buf.references, bufopts)
	keymap('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end
------------beaufy lsp----------
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opt)
keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
keymap("n", "<leader>r", "<cmd>Lspsaga rename<CR>", opt)
-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opt)
-- Show line diagnostics
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
-- Show cursor diagnostic
--keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opt)
-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opt)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opt)
-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opt)
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opt)
keymap("n","<leader>o", "<cmd>LSoutlineToggle<CR>",opt)
-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opt)
-- Float terminal
keymap("n", "<A-t>", "<cmd>Lspsaga open_floaterm<CR>", opt)
-- if you want pass somc cli command into terminal you can do like this
-- open lazygit in lspsaga float terminal
--keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", opt)
-- close floaterm
keymap("t", "<A-t>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opt)
---------------Nvim dap---------------
keymap({"i", "n", "v"}, "<F5>", "<cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true, buffer = bufnr})
keymap({"i", "n", "v"}, "<F10>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
keymap({"i", "n", "v"}, "<F11>", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true, buffer = bufnr})
keymap({"i", "n", "v"}, "<F12>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
keymap({"i", "n", "v"}, "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true, buffer = bufnr})
return pluginKeys
