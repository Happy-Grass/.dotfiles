-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = true
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/xfw/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/xfw/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/xfw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/xfw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/xfw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ChatGPT.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/ChatGPT.nvim",
    url = "https://github.com/jackMort/ChatGPT.nvim"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nç\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\3B\1\2\1K\0\1\0\rmappings\1\0\2\nextra\2\nbasic\2\nextra\1\0\3\nbelow\bgco\beol\bgcA\nabove\bgcO\ropleader\1\0\2\tline\agc\nblock\agb\ftoggler\1\0\2\tline\bgcc\nblock\bgbc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\nþ\1\0\0\5\0\t\0\0226\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\1K\0\1\0\1\0\3\14nocombine\2\tbold\2\afg\f#c3e88d\23LeapLabelSecondary\1\0\3\14nocombine\2\tbold\2\afg\f#4fd6be\21LeapLabelPrimary\1\0\3\14nocombine\2\tbold\2\afg\f#7aa2f7\14LeapMatch\16nvim_set_hl\bapi\bvimÂ\4\1\0\a\0\25\00076\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\4€6\2\3\0009\2\4\2'\4\5\0B\2\2\0019\2\6\1B\2\1\0019\2\a\0014\3\0\0=\3\b\0029\2\a\1+\3\2\0=\3\t\0026\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\f\0005\6\r\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\14\0005\6\15\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\16\0005\6\17\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\18\0005\6\19\0B\2\4\0016\2\3\0009\2\n\0029\2\20\2'\4\21\0005\5\23\0003\6\22\0=\6\24\5B\2\3\1K\0\1\0\rcallback\1\0\0\0\16ColorScheme\24nvim_create_autocmd\1\0\3\14nocombine\2\tbold\2\afg\f#c3e88d\23LeapLabelSecondary\1\0\3\14nocombine\2\tbold\2\afg\f#4fd6be\21LeapLabelPrimary\1\0\3\14nocombine\2\tbold\2\afg\f#7aa2f7\14LeapMatch\1\0\1\tlink\fComment\17LeapBackdrop\16nvim_set_hl\bapi*highlight_unlabeled_phase_one_targets\16safe_labels\topts\25add_default_mappings\20Leap not found!\vnotify\bvim\tleap\frequire\npcall\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["marks.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentoast/marks.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nƒ\2\0\0\a\0\16\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0019\2\2\0009\2\4\0024\3\t\0009\4\5\1>\4\1\0039\4\6\2>\4\2\0039\4\a\1>\4\3\0039\4\b\2>\4\4\0039\4\t\1>\4\5\0039\4\n\2>\4\6\0039\4\v\1>\4\a\0039\4\f\2>\4\b\0039\4\r\0005\6\14\0=\3\15\6B\4\2\1K\0\1\0\fsources\1\0\0\nsetup\15shellcheck\rbeautysh\14proselint\16latexindent\rluacheck\vstylua\vflake8\nblack\16diagnostics\15formatting\rbuiltins\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n€\4\0\0\b\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\15\15break_undo\2\16enable_abbr\1\28enable_bracket_in_quote\2\30enable_check_bracket_line\2\22enable_afterquote\2\21enable_moveright\2\vmap_bs\2\22ignored_next_char\23[%w%%%'%[%\"%.%`%$]\28disable_in_replace_mode\2\27disable_in_visualblock\1\21disable_in_macro\1\fmap_c_w\1\fmap_c_h\1\vmap_cr\2\rcheck_ts\1\1\3\0\0\20TelescopePrompt\18spectre_panel\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    config = { "\27LJ\2\n£\1\0\2\t\0\a\1\24+\2\2\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\0026\4\0\0009\4\3\0049\4\4\4\18\6\3\0B\4\2\2*\5\0\0\1\5\4\0X\5\2€+\2\1\0X\5\a€\18\a\3\0009\5\5\3'\b\6\0B\5\3\2\15\0\5\0X\6\1€+\2\1\0L\2\2\0\17^fugitive://\nmatch\rgetfsize\afn\22nvim_buf_get_name\bapi\bvim€À\fÉ\4\1\0\6\0\23\0\0276\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0005\4\b\0=\4\t\0033\4\n\0=\4\v\3=\3\f\0025\3\r\0=\3\14\0025\3\20\0005\4\16\0005\5\15\0=\5\17\0045\5\18\0=\5\19\4=\4\21\3=\3\22\2B\0\2\1K\0\1\0\vfilter\bfzf\1\0\0\15extra_opts\1\5\0\0\v--bind\22ctrl-o:toggle-all\r--prompt\a> \15action_for\1\0\0\1\0\2\vctrl-t\rtab drop\vctrl-s\nsplit\rfunc_map\1\0\6\nopenc\6O\16ptogglemode\az,\tdrop\6o\ttabc\5\nsplit\n<C-s>\ftabdrop\n<C-t>\fpreview\22should_preview_cb\0\17border_chars\1\n\0\0\bâ”ƒ\bâ”ƒ\bâ”\bâ”\bâ”\bâ”“\bâ”—\bâ”›\bâ–ˆ\1\0\4\15show_title\1\17delay_syntax\3P\16win_vheight\3\f\15win_height\3\f\1\0\2\23auto_resize_height\2\16auto_enable\2\nsetup\bbqf\frequireY    hi BqfPreviewBorder guifg=#50a14f ctermfg=71\n    hi link BqfPreviewRange Search\n\bcmd\bvim\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nµ\2\0\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\rbuftypes\25user_default_options\tsass\fparsers\1\2\0\0\bcss\1\0\1\venable\1\1\0\r\rRRGGBBAA\1\nnames\1\vRRGGBB\2\bRGB\2\18always_update\1\tmode\15background\16virtualtext\bâ– \rtailwind\1\vcss_fn\1\bcss\1\vhsl_fn\1\vrgb_fn\1\rAARRGGBB\1\14filetypes\1\0\0\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÕ\3\0\0\b\0\24\0#6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\1)\2\1\0=\2\5\0016\1\2\0009\1\6\1+\2\2\0=\2\a\0019\1\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\16\0004\6\3\0005\a\15\0>\a\1\6=\6\17\5=\5\18\4=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3B\1\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\2\21hide_root_folder\2\nwidth\3\30\24update_focused_file\1\0\2\16update_root\2\venable\2\bgit\1\0\1\venable\1\1\0\3\20respect_buf_cwd\2\23sync_root_with_cwd\2\fsort_by\19case_sensitive\nsetup\18termguicolors\bopt\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n‹\4\0\0\6\0\21\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0009\1\15\1'\2\17\0=\2\16\0016\1\14\0009\1\15\1'\2\19\0=\2\18\0016\1\14\0009\1\15\1)\2c\0=\2\20\1K\0\1\0\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\21node_incremental\t<CR>\19init_selection\t<CR>\22scope_incremental\n<TAB>\21node_decremental\t<BS>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\6c\bcpp\tbash\tjson\bvim\blua\vpython\nlatex\rmarkdown\20markdown_inline\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  vimtex = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nƒ\2\0\0\a\0\16\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0019\2\2\0009\2\4\0024\3\t\0009\4\5\1>\4\1\0039\4\6\2>\4\2\0039\4\a\1>\4\3\0039\4\b\2>\4\4\0039\4\t\1>\4\5\0039\4\n\2>\4\6\0039\4\v\1>\4\a\0039\4\f\2>\4\b\0039\4\r\0005\6\14\0=\3\15\6B\4\2\1K\0\1\0\fsources\1\0\0\nsetup\15shellcheck\rbeautysh\14proselint\16latexindent\rluacheck\vstylua\vflake8\nblack\16diagnostics\15formatting\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n€\4\0\0\b\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\15\15break_undo\2\16enable_abbr\1\28enable_bracket_in_quote\2\30enable_check_bracket_line\2\22enable_afterquote\2\21enable_moveright\2\vmap_bs\2\22ignored_next_char\23[%w%%%'%[%\"%.%`%$]\28disable_in_replace_mode\2\27disable_in_visualblock\1\21disable_in_macro\1\fmap_c_w\1\fmap_c_h\1\vmap_cr\2\rcheck_ts\1\1\3\0\0\20TelescopePrompt\18spectre_panel\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-bqf
time([[Config for nvim-bqf]], true)
try_loadstring("\27LJ\2\n£\1\0\2\t\0\a\1\24+\2\2\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\0026\4\0\0009\4\3\0049\4\4\4\18\6\3\0B\4\2\2*\5\0\0\1\5\4\0X\5\2€+\2\1\0X\5\a€\18\a\3\0009\5\5\3'\b\6\0B\5\3\2\15\0\5\0X\6\1€+\2\1\0L\2\2\0\17^fugitive://\nmatch\rgetfsize\afn\22nvim_buf_get_name\bapi\bvim€À\fÉ\4\1\0\6\0\23\0\0276\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0005\4\b\0=\4\t\0033\4\n\0=\4\v\3=\3\f\0025\3\r\0=\3\14\0025\3\20\0005\4\16\0005\5\15\0=\5\17\0045\5\18\0=\5\19\4=\4\21\3=\3\22\2B\0\2\1K\0\1\0\vfilter\bfzf\1\0\0\15extra_opts\1\5\0\0\v--bind\22ctrl-o:toggle-all\r--prompt\a> \15action_for\1\0\0\1\0\2\vctrl-t\rtab drop\vctrl-s\nsplit\rfunc_map\1\0\6\nopenc\6O\16ptogglemode\az,\tdrop\6o\ttabc\5\nsplit\n<C-s>\ftabdrop\n<C-t>\fpreview\22should_preview_cb\0\17border_chars\1\n\0\0\bâ”ƒ\bâ”ƒ\bâ”\bâ”\bâ”\bâ”“\bâ”—\bâ”›\bâ–ˆ\1\0\4\15show_title\1\17delay_syntax\3P\16win_vheight\3\f\15win_height\3\f\1\0\2\23auto_resize_height\2\16auto_enable\2\nsetup\bbqf\frequireY    hi BqfPreviewBorder guifg=#50a14f ctermfg=71\n    hi link BqfPreviewRange Search\n\bcmd\bvim\0", "config", "nvim-bqf")
time([[Config for nvim-bqf]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\nþ\1\0\0\5\0\t\0\0226\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\1K\0\1\0\1\0\3\14nocombine\2\tbold\2\afg\f#c3e88d\23LeapLabelSecondary\1\0\3\14nocombine\2\tbold\2\afg\f#4fd6be\21LeapLabelPrimary\1\0\3\14nocombine\2\tbold\2\afg\f#7aa2f7\14LeapMatch\16nvim_set_hl\bapi\bvimÂ\4\1\0\a\0\25\00076\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\4€6\2\3\0009\2\4\2'\4\5\0B\2\2\0019\2\6\1B\2\1\0019\2\a\0014\3\0\0=\3\b\0029\2\a\1+\3\2\0=\3\t\0026\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\f\0005\6\r\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\14\0005\6\15\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\16\0005\6\17\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\18\0005\6\19\0B\2\4\0016\2\3\0009\2\n\0029\2\20\2'\4\21\0005\5\23\0003\6\22\0=\6\24\5B\2\3\1K\0\1\0\rcallback\1\0\0\0\16ColorScheme\24nvim_create_autocmd\1\0\3\14nocombine\2\tbold\2\afg\f#c3e88d\23LeapLabelSecondary\1\0\3\14nocombine\2\tbold\2\afg\f#4fd6be\21LeapLabelPrimary\1\0\3\14nocombine\2\tbold\2\afg\f#7aa2f7\14LeapMatch\1\0\1\tlink\fComment\17LeapBackdrop\16nvim_set_hl\bapi*highlight_unlabeled_phase_one_targets\16safe_labels\topts\25add_default_mappings\20Leap not found!\vnotify\bvim\tleap\frequire\npcall\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nç\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\3B\1\2\1K\0\1\0\rmappings\1\0\2\nextra\2\nbasic\2\nextra\1\0\3\nbelow\bgco\beol\bgcA\nabove\bgcO\ropleader\1\0\2\tline\agc\nblock\agb\ftoggler\1\0\2\tline\bgcc\nblock\bgbc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÕ\3\0\0\b\0\24\0#6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\1)\2\1\0=\2\5\0016\1\2\0009\1\6\1+\2\2\0=\2\a\0019\1\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\16\0004\6\3\0005\a\15\0>\a\1\6=\6\17\5=\5\18\4=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3B\1\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\2\21hide_root_folder\2\nwidth\3\30\24update_focused_file\1\0\2\16update_root\2\venable\2\bgit\1\0\1\venable\1\1\0\3\20respect_buf_cwd\2\23sync_root_with_cwd\2\fsort_by\19case_sensitive\nsetup\18termguicolors\bopt\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nµ\2\0\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\rbuftypes\25user_default_options\tsass\fparsers\1\2\0\0\bcss\1\0\1\venable\1\1\0\r\rRRGGBBAA\1\nnames\1\vRRGGBB\2\bRGB\2\18always_update\1\tmode\15background\16virtualtext\bâ– \rtailwind\1\vcss_fn\1\bcss\1\vhsl_fn\1\vrgb_fn\1\rAARRGGBB\1\14filetypes\1\0\0\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n‹\4\0\0\6\0\21\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0009\1\15\1'\2\17\0=\2\16\0016\1\14\0009\1\15\1'\2\19\0=\2\18\0016\1\14\0009\1\15\1)\2c\0=\2\20\1K\0\1\0\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\21node_incremental\t<CR>\19init_selection\t<CR>\22scope_incremental\n<TAB>\21node_decremental\t<BS>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\6c\bcpp\tbash\tjson\bvim\blua\vpython\nlatex\rmarkdown\20markdown_inline\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles(1) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
