local colorscheme = "tokyonight"
require("tokyonight").setup({
    -- style = "storm",
    -- transparent = false,
    -- terminal_colors = true,
    -- sidebars = { "terminal", 'vista_kind' },
    styles = {
        comments = { bold = false, italic = false, blend = 50, standout = false },
        keywords = { italic = true, bold = true },
        functions = { italic = true, bold = false },
        variables = { italic = false, bold = true },
        -- Background styles. Can be "dark", "transparent" or "normal"
        -- sidebars = "normal",
        -- floats = "normal",
    },
    -- day_brightness = 0.8,
    -- hide_inactive_statusline = true,
    -- dim_inactive = true,
    -- lualine_bold = false,
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme:" .. colorscheme .. " not found!")
    return
end
