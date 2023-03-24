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
		use({
			"folke/tokyonight.nvim",
			config = require("ui/themes/tokyonight"),
		})
		use({
			"EdenEast/nightfox.nvim",
			-- config = require("ui/themes/nightfox"),
		})
		use({
			"catppuccin/nvim",
			as = "catppuccin",
			config = require("ui/themes/catppuccin"),
		})
		use({
			"olimorris/onedarkpro.nvim",
			config = require("ui/themes/onedarkpro"),
		})
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
		use("williamboman/mason.nvim")
		use("williamboman/mason-lspconfig.nvim")
		use("neovim/nvim-lspconfig")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		-- use("hrsh7th/cmp-vsnip")
		-- use("hrsh7th/vim-vsnip")
		use("hrsh7th/cmp-nvim-lsp-signature-help")
		use("kdheepak/cmp-latex-symbols")
		-- use("rafamadriz/friendly-snippets")
		use("hrsh7th/nvim-cmp")
		use({
			"L3MON4D3/LuaSnip",
			config = require("plugin-config/luasnip"),
		})
		use("saadparwaiz1/cmp_luasnip")
		use({
			"glepnir/lspsaga.nvim",
			branch = "main",
		})
		use("onsails/lspkind-nvim")
		use("mfussenegger/nvim-dap")
		use("rcarriga/nvim-dap-ui")
		use({
			"folke/noice.nvim",
			config = function()
				require("noice").setup({
					-- add any options here
				})
			end,
			requires = {
				-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
				"MunifTanjim/nui.nvim",
				-- OPTIONAL:
				--   `nvim-notify` is only needed, if you want to use the notification view.
				--   If not available, we use `mini` as the fallback
				"rcarriga/nvim-notify",
			},
		})
		use({
			"nvim-treesitter/nvim-treesitter",
			config = require("plugin-config/nvim-treesitter"),
			run = ":TSUpdate",
		})
		use({
			"lervag/vimtex",
			config = require("plugin-config/vimtex"),
		})
		use({
			"jose-elias-alvarez/null-ls.nvim",
			config = require("plugin-config/null-ls"),
		})
		use({
			"windwp/nvim-autopairs",
			config = require("plugin-config/autopairs"),
		})
		use({
			"lewis6991/gitsigns.nvim",
			config = require("plugin-config/gitsigns"),
		})
		use("lukas-reineke/indent-blankline.nvim")
		use({
			"chentoast/marks.nvim",
			config = require("plugin-config/marks"),
		})
		use({
			"Shatur/neovim-session-manager",
			config = require("plugin-config/nvim-session-manager"),
		})
		use("nvim-lua/plenary.nvim")
		use({
			"nvim-telescope/telescope.nvim",
			config = require("plugin-config/telescope"),
		})
		use("nvim-telescope/telescope-ui-select.nvim")
		use({
			"numToStr/Comment.nvim",
			config = require("plugin-config/comment"),
		})
		use({
			"kevinhwang91/nvim-bqf",
			config = require("plugin-config/quickfix"),
		})
		-- use({
		--     "jackMort/ChatGPT.nvim",
		--     requires = {
		--         "MunifTanjim/nui.nvim",
		--         "nvim-lua/plenary.nvim",
		--         "nvim-telescope/telescope.nvim",
		--     },
		--     config = require("plugin-config/chatgpt")
		-- })
		use({
			"terror/chatgpt.nvim",
			run = "pip3 install -r requirements.txt",
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
