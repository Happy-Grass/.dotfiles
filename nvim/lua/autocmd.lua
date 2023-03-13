local nvimrc = vim.api.nvim_create_augroup("NVIMRC", { clear = true })
local codepre = vim.api.nvim_create_augroup("CODEPRE", { clear = true })
local session = vim.api.nvim_create_augroup("SESSION", {})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = "init.lua",
    group = nvimrc,
    command = "luafile%",
})
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = "init.lua",
    group = nvimrc,
    callback = function()
        vim.o.path = vim.o.path .. ",**/*"
    end
})
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "python", "lua", "tex", "r", "sh" },
    group = codepre,
    command = "LspStart",
})
vim.api.nvim_create_autocmd({ 'User' }, {
    pattern = "SessionLoadPost",
    group = session,
    callback = function()
        require('nvim-tree').toggle(false, true)
    end,
})
vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    group = session,
    callback = function()
        if vim.bo.filetype ~= 'git'
            and not vim.bo.filetype ~= 'gitcommit'
        then
            require('session_manager').autosave_session()
        end
    end
})
