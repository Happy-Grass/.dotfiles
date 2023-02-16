local nvimrc = vim.api.nvim_create_augroup("NVIMRC", {clear = true})
local codepre = vim.api.nvim_create_augroup("CODEPRE", {clear = true})
vim.api.nvim_create_autocmd({"BufWritePost"}, {
	pattern = "init.lua",
	group = nvimrc,
	command = "source %",
})
vim.api.nvim_create_autocmd({"BufReadPost"}, {
	pattern = "init.lua",
	group = nvimrc,
	callback = function()
		vim.o.path = vim.o.path .. ",**/*"
	end
})
vim.api.nvim_create_autocmd({"FileType"},{
    pattern = "python",
    group = codepre,
    command = "LspStart",
})
vim.api.nvim_create_autocmd({"FileType"},{
    pattern = "lua",
    group = codepre,
    command = "LspStart",
})
