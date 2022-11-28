local status, bufferline = pcall(require, "bufferline")
if not status then
  vim.notify("没有找到 bufferline")
  return
end
-- bfferline 配置
-- https://github.com/akinsho/bufferline.nvim#configuration
bufferline.setup({
  options = {
    -- 关闭 Tab 的命令
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
	indicator = {
		icon = '▎', -- this should be omitted if indicator style is not 'icon'
		style = 'icon' --| 'underline' | 'none',
},
	buffer_close_icon = '',
	modified_icon = '●',
	close_icon = ' ',
	left_trunc_marker = '',
	right_trunc_marker = '',
	--- name_formatter can be used to change the buffer's label in the bufferline.
	--- Please note some names can/will break the
	--- bufferline so use this at your discretion knowing that it has
	--- some limitations that will *NOT* be fixed.
    -- 侧边栏配置
    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
    --diagnostics = "nvim_lsp",
    -- 使用 nvim 内置 LSP  后续课程会配置
    -- 可选，显示 LSP 报错图标
    ---@diagnostic disable-next-line: unused-local
    --diagnostics_indicator = function(count, level, diagnostics_dict, context)
      --local s = " "
      --for e, n in pairs(diagnostics_dict) do
      --  local sym = e == "error" and " " or (e == "warning" and " " or "")
      --  s = s .. n .. sym
      --end
      --return s
    --end,
  },
})
