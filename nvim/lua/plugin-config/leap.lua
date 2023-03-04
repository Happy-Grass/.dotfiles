local status, leap = pcall(require, 'leap')
if not status then
    vim.notify("leap not found!")
end

leap.add_default_mappings()

leap.opts.safe_labels = {} -- Disable auto jump first match

leap.opts.highlight_unlabeled_phase_one_targets = true

local flit_status, flit = pcall(require, 'flit')
if not flit_status then
    vim.notify("flit not found!")
end

flit.setup {
    keys = { f = 'f', F = 'F', t = 't', T = 'T' },
    -- A string like "nv", "nvo", "o", etc.
    labeled_modes = "v",
    multiline = true,
    -- Like `leap`s similar argument (call-specific overrides).
    -- E.g.: opts = { equivalence_classes = {} }
    opts = {}
}
