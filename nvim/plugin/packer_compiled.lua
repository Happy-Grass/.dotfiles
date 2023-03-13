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
local should_profile = false
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
  ["flit.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/flit.nvim",
    url = "https://github.com/ggandor/flit.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nô\1\0\0\6\1\a\0\18-\0\0\0009\0\0\0B\0\1\2\a\0\1\0X\0\2€+\0\0\0L\0\2\0005\0\2\0005\1\3\0-\2\0\0009\2\4\2-\4\0\0009\4\5\4B\4\1\0A\2\0\2>\2\3\1=\1\6\0L\0\2\0\0À\targs!get_current_buffer_file_path\16escape_path\1\6\0\0 --search-parent-directories\21--stdin-filepath\0\a--\6-\1\0\2\bexe\vstylua\nstdin\2\16special.lua!get_current_buffer_file_name‰\3\1\0\t\0\22\0)6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4=\4\t\0035\4\r\0004\5\3\0006\6\0\0'\b\n\0B\6\2\0029\6\v\6>\6\1\0053\6\f\0>\6\2\5=\5\14\0044\5\3\0006\6\0\0'\b\15\0B\6\2\0029\6\16\6>\6\1\5=\5\17\0044\5\3\0006\6\0\0'\b\18\0B\6\2\0029\6\19\6>\6\1\5=\5\20\4=\4\21\3B\1\2\0012\0\0€K\0\1\0\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\vpython\nblack\31formatter.filetypes.python\blua\1\0\0\0\vstylua\28formatter.filetypes.lua\14log_level\tWARN\vlevels\blog\bvim\1\0\1\flogging\2\nsetup\14formatter\19formatter.util\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
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
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n€\4\0\0\b\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\15\vmap_cr\2\rcheck_ts\1\15break_undo\2\16enable_abbr\1\28enable_bracket_in_quote\2\30enable_check_bracket_line\2\22enable_afterquote\2\21enable_moveright\2\vmap_bs\2\22ignored_next_char\23[%w%%%'%[%\"%.%`%$]\28disable_in_replace_mode\2\27disable_in_visualblock\1\21disable_in_macro\1\fmap_c_w\1\fmap_c_h\1\1\3\0\0\20TelescopePrompt\18spectre_panel\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
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
  ["nvim-lint"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n¾\3\0\0\b\0\22\0!6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\1)\2\1\0=\2\5\0016\1\2\0009\1\6\1+\2\2\0=\2\a\0019\1\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0005\5\14\0004\6\3\0005\a\r\0>\a\1\6=\6\15\5=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\3B\1\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\2\21hide_root_folder\2\nwidth\3\30\24update_focused_file\1\0\2\venable\2\16update_root\2\1\0\3\20respect_buf_cwd\2\23sync_root_with_cwd\2\fsort_by\19case_sensitive\nsetup\18termguicolors\bopt\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n‹\4\0\0\6\0\21\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0009\1\15\1'\2\17\0=\2\16\0016\1\14\0009\1\15\1'\2\19\0=\2\18\0016\1\14\0009\1\15\1)\2c\0=\2\20\1K\0\1\0\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\n<TAB>\21node_decremental\t<BS>\21node_incremental\t<CR>\19init_selection\t<CR>\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\0\1\v\0\0\6c\bcpp\tbash\tjson\bvim\blua\vpython\nlatex\rmarkdown\20markdown_inline\nsetup\28nvim-treesitter.configs\frequire\0" },
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
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nô\1\0\0\6\1\a\0\18-\0\0\0009\0\0\0B\0\1\2\a\0\1\0X\0\2€+\0\0\0L\0\2\0005\0\2\0005\1\3\0-\2\0\0009\2\4\2-\4\0\0009\4\5\4B\4\1\0A\2\0\2>\2\3\1=\1\6\0L\0\2\0\0À\targs!get_current_buffer_file_path\16escape_path\1\6\0\0 --search-parent-directories\21--stdin-filepath\0\a--\6-\1\0\2\bexe\vstylua\nstdin\2\16special.lua!get_current_buffer_file_name‰\3\1\0\t\0\22\0)6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4=\4\t\0035\4\r\0004\5\3\0006\6\0\0'\b\n\0B\6\2\0029\6\v\6>\6\1\0053\6\f\0>\6\2\5=\5\14\0044\5\3\0006\6\0\0'\b\15\0B\6\2\0029\6\16\6>\6\1\5=\5\17\0044\5\3\0006\6\0\0'\b\18\0B\6\2\0029\6\19\6>\6\1\5=\5\20\4=\4\21\3B\1\2\0012\0\0€K\0\1\0\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\vpython\nblack\31formatter.filetypes.python\blua\1\0\0\0\vstylua\28formatter.filetypes.lua\14log_level\tWARN\vlevels\blog\bvim\1\0\1\flogging\2\nsetup\14formatter\19formatter.util\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n€\4\0\0\b\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\15\vmap_cr\2\rcheck_ts\1\15break_undo\2\16enable_abbr\1\28enable_bracket_in_quote\2\30enable_check_bracket_line\2\22enable_afterquote\2\21enable_moveright\2\vmap_bs\2\22ignored_next_char\23[%w%%%'%[%\"%.%`%$]\28disable_in_replace_mode\2\27disable_in_visualblock\1\21disable_in_macro\1\fmap_c_w\1\fmap_c_h\1\1\3\0\0\20TelescopePrompt\18spectre_panel\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n‹\4\0\0\6\0\21\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0009\1\15\1'\2\17\0=\2\16\0016\1\14\0009\1\15\1'\2\19\0=\2\18\0016\1\14\0009\1\15\1)\2c\0=\2\20\1K\0\1\0\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\n<TAB>\21node_decremental\t<BS>\21node_incremental\t<CR>\19init_selection\t<CR>\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\0\1\v\0\0\6c\bcpp\tbash\tjson\bvim\blua\vpython\nlatex\rmarkdown\20markdown_inline\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n¾\3\0\0\b\0\22\0!6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\1)\2\1\0=\2\5\0016\1\2\0009\1\6\1+\2\2\0=\2\a\0019\1\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0005\5\14\0004\6\3\0005\a\r\0>\a\1\6=\6\15\5=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\3B\1\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\2\21hide_root_folder\2\nwidth\3\30\24update_focused_file\1\0\2\venable\2\16update_root\2\1\0\3\20respect_buf_cwd\2\23sync_root_with_cwd\2\fsort_by\19case_sensitive\nsetup\18termguicolors\bopt\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
