return function()
    local status, leap = pcall(require, "leap")
    if not status then
        vim.notify("Leap not found!")
    end
    leap.add_default_mappings()
    leap.opts.safe_labels = {}
    leap.opts.highlight_unlabeled_phase_one_targets = true
    vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
    vim.api.nvim_set_hl(0, "LeapMatch", {
        fg = "#7aa2f7",
        bold = true,
        nocombine = true,
    })
    vim.api.nvim_set_hl(0, "LeapLabelPrimary", {
        fg = "#4fd6be",
        bold = true,
        nocombine = true,
    })
    vim.api.nvim_set_hl(0, "LeapLabelSecondary", {
        fg = "#c3e88d",
        bold = true,
        nocombine = true,
    })
    vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
            vim.api.nvim_set_hl(0, "LeapMatch", {
                fg = "#7aa2f7",
                bold = true,
                nocombine = true,
            })
            vim.api.nvim_set_hl(0, "LeapLabelPrimary", {
                fg = "#4fd6be",
                bold = true,
                nocombine = true,
            })
            vim.api.nvim_set_hl(0, "LeapLabelSecondary", {
                fg = "#c3e88d",
                bold = true,
                nocombine = true,
            })

        end,
    })
end
