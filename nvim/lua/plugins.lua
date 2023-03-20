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
		use("arkav/lualine-lsp-progress")
		use({
			"nvim-tree/nvim-tree.lua",
			requires = {
				"nvim-tree/nvim-web-devicons",
			},
			config = require("plugin-config/nvim-tree"),
			tag = "nightly",
		})
		use({
			"ggandor/leap.nvim",
			config = require("plugin-config/leap"),
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
		use({
			"numToStr/Comment.nvim",
			config = require("plugin-config/comment"),
		})
		use({
			"kevinhwang91/nvim-bqf",
			config = require("plugin-config/quickfix"),
		})
		---------chatgpt-------------
		use({
			"jackMort/ChatGPT.nvim",
			requires = {
				"MunifTanjim/nui.nvim",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
			},
		})
		use({
			"NvChad/nvim-colorizer.lua",
			config = require("plugin-config/colorizer"),
		})
		use({
			"tversteeg/registers.nvim",
			config = require("plugin-config/registers"),
		})
		use({
			"AckslD/nvim-neoclip.lua",
			requires = {
				{ "kkharji/sqlite.lua", module = "sqlite" },
				{ "nvim-telescope/telescope.nvim" },
			},
			config = require("plugin-config/neoclip"),
		})
		use({
			"samodostal/image.nvim",
			requires = {
				"nvim-lua/plenary.nvim",
				{ "m00qek/baleia.nvim", tag = "v1.2.0" },
			},
			config = require("plugin-config/image"),
		})
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
		profile = {
			enable = true,
			threshold = 1,
		},
	},
})

----------Config----------
require("plugin-config/vimtex")
require("plugin-config/gitsigns")
require("plugin-config/chatgpt")
require("plugin-config/telescope")
require("plugin-config/marks")
require("plugin-config/nvim-session-manager")
