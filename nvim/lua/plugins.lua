-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    -- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.startup({
	function(use)
		use("wbthomason/packer.nvim")
		use("folke/tokyonight.nvim")
		use({"akinsho/bufferline.nvim", requires = {"kyazdani42/nvim-web-devicons", "moll/vim-bbye"}})
		use({"nvim-lualine/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons"}})
		---------LSP----------
		use("williamboman/mason.nvim")
		use("williamboman/mason-lspconfig.nvim")
		use("neovim/nvim-lspconfig")
		use("hrsh7th/cmp-nvim-lsp")  --cmp source
		use("hrsh7th/cmp-buffer")  --cmp source
		use("hrsh7th/cmp-path")  --cmp source
		use("hrsh7th/cmp-cmdline")  --cmp source
		use("hrsh7th/cmp-vsnip")  --cmp source
		use("hrsh7th/vim-vsnip")
		use("hrsh7th/cmp-nvim-lsp-signature-help")  --show fill help
		use("rafamadriz/friendly-snippets")
		use("hrsh7th/nvim-cmp")  --realize cmp
		use({"glepnir/lspsaga.nvim", branch = "main"})  --UI
		use("onsails/lspkind-nvim")
		---------Nvim dap----------
		use("mfussenegger/nvim-dap")
		use("rcarriga/nvim-dap-ui")
		---------Treesitter----------
		use({"nvim-treesitter/nvim-treesitter", run=":TSUpdate"})
	end,
	config = {
		display = {
		open_fn = function()
			return require("packer.util").float({border = "single"})
		end,
	},
},
})

require("plugin-config.nvim-treesitter")
