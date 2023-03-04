local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup({
    function(use)
        use("wbthomason/packer.nvim")
        use("folke/tokyonight.nvim")
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons',
            },
            tag = 'nightly'
        }
        use({ "ggandor/flit.nvim", requires = { "ggandor/leap.nvim" } })
        ---------LSP----------
        use("williamboman/mason.nvim")
        use("williamboman/mason-lspconfig.nvim")
        use("neovim/nvim-lspconfig")
        use("hrsh7th/cmp-nvim-lsp") --cmp source
        use("hrsh7th/cmp-buffer") --cmp source
        use("hrsh7th/cmp-path") --cmp source
        use("hrsh7th/cmp-cmdline") --cmp source
        use("hrsh7th/cmp-vsnip") --cmp source
        use("hrsh7th/vim-vsnip")
        use("hrsh7th/cmp-nvim-lsp-signature-help") --show fill help
        use("rafamadriz/friendly-snippets")
        use("hrsh7th/nvim-cmp") --realize cmp
        use({ "glepnir/lspsaga.nvim", branch = "main" }) --UI
        use("onsails/lspkind-nvim")
        ---------Nvim dap----------
        use("mfussenegger/nvim-dap")
        use("rcarriga/nvim-dap-ui")
        ---------Treesitter----------
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        use("lervag/vimtex")
        use("mfussenegger/nvim-lint")
        use("mhartington/formatter.nvim")
        use("lewis6991/gitsigns.nvim")
        ---------indent-------------
        use("lukas-reineke/indent-blankline.nvim")
        ---------chatgpt-------------
        use({
            "jackMort/ChatGPT.nvim",
            requires = {
                "MunifTanjim/nui.nvim",
                "nvim-lua/plenary.nvim",
                "nvim-telescope/telescope.nvim"
            }
        })
        if packer_bootstrap then
            require('packer').sync()
        end
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
require("plugin-config/nvim-treesitter")
require("plugin-config/leap")
require("plugin-config/vimtex")
require("plugin-config/nvim-lint")
require("plugin-config/nvim-formatter")
require("plugin-config/gitsigns")
require("plugin-config/indent-blankline")
require("plugin-config/chatgpt")
require("plugin-config/nvim-tree")
