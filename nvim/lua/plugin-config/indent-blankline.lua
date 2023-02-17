local status, indentline = pcall(require, "indent_blankline")
if not status then
    vim.notify("Indent_blankline not found!")
    return
end
vim.opt.list = true
vim.opt.listchars:append "eol:↴"
indentline.setup {
    show_end_of_line = true,
}
