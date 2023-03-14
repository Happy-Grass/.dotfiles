local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup({
	function(use)
		if packer_bootstrap then
			require("packer").sync()
		end
		use("wbthomason/packer.nvim")
		use("folke/tokyonight.nvim")
		use({
			"akinsho/bufferline.nvim",
			requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
		})
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons" },
		})
		use({
			"nvim-tree/nvim-tree.lua",
			requires = {
				"nvim-tree/nvim-web-devicons",
			},
			config = require("plugin-config/nvim-tree"),
			tag = "nightly",
		})
		use({
			"ggandor/flit.nvim",
			requires = { "ggandor/leap.nvim" },
		})
		---------LSP----------
		use("williamboman/mason.nvim")
		use("williamboman/mason-lspconfig.nvim")
		use("neovim/nvim-lspconfig")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/vim-vsnip")
		use("hrsh7th/cmp-nvim-lsp-signature-help")
		use("rafamadriz/friendly-snippets")
		use("hrsh7th/nvim-cmp")
		use({
			"glepnir/lspsaga.nvim",
			branch = "main",
		}) --UI
		use("onsails/lspkind-nvim")
		---------Nvim dap----------
		use("mfussenegger/nvim-dap")
		use("rcarriga/nvim-dap-ui")
		---------Treesitter----------
		use({
			"nvim-treesitter/nvim-treesitter",
			config = require("plugin-config/nvim-treesitter"),
			run = ":TSUpdate",
		})
		use("lervag/vimtex")
		use({
			"jose-elias-alvarez/null-ls.nvim",
			config = require("plugin-config/null-ls"),
		})
		use({
			"windwp/nvim-autopairs",
			config = require("plugin-config/autopairs"),
		})
		use("lewis6991/gitsigns.nvim")
		---------indent-------------
		use("lukas-reineke/indent-blankline.nvim")
		use("chentoast/marks.nvim")
		use("Shatur/neovim-session-manager")
		use("nvim-lua/plenary.nvim")
		use("nvim-telescope/telescope.nvim")
		use("nvim-telescope/telescope-ui-select.nvim")
		---------chatgpt-------------
		use({
			"jackMort/ChatGPT.nvim",
			requires = {
				"MunifTanjim/nui.nvim",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
			},
		})
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})

----------Config----------
require("plugin-config/leap")
require("plugin-config/vimtex")
require("plugin-config/gitsigns")
require("plugin-config/indent-blankline")
require("plugin-config/chatgpt")
require("plugin-config/telescope")
require("plugin-config/marks")
require("plugin-config/nvim-session-manager")
