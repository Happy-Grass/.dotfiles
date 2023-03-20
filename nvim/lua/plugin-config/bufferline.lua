local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("没有找到 bufferline")
    return
end

bufferline.setup({
    options = {
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
        offsets = {
            {
                filetype = "NvimTree",
                text = "󰟐  File Explorer",
                highlight = "Directory",
                text_align = "center",
            },
        },
    },
})
