-- auto install Packer.nvim
-- plugin directory
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("Installing Pakcer.nvim，Waiting...")
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
    vim.notify("Pakcer.nvim has installed")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer.nvim not found!")
    return
end

packer.startup({
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
