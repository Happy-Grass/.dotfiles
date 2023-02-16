-- coding style
-- please use mason to install the linter manually
local lint = require("lint")
-- config the linters you want to run per file type
lint.linters_by_ft = {
    python = {'flake8',}
}
-- setup a autocmd to trigger linting
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
