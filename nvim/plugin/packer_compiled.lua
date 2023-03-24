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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nÁ\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\3B\1\2\1K\0\1\0\rmappings\1\0\2\nextra\2\nbasic\2\nextra\1\0\3\beol\bgcA\nabove\bgcO\nbelow\bgco\ropleader\1\0\2\nblock\agb\tline\agc\ftoggler\1\0\2\nblock\bgbc\tline\bgcc\1\0\2\fpadding\2\vsticky\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nG\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0¿\vexpand\23expand_or_jumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2\1\0B\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\tjump\rjumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2ˇˇB\0\2\1K\0\1\0\0¿\tjump\rjumpable€\1\0\0\a\1\r\0\25-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\5Ä6\0\1\0'\2\2\0B\0\2\2B\0\1\1X\0\14Ä6\0\3\0009\0\4\0'\2\5\0B\0\2\0026\1\6\0009\1\a\1'\3\b\0009\4\t\0009\5\n\0009\6\v\0B\1\5\0026\2\f\0\18\4\1\0B\2\2\1K\0\1\0\0¿\nprint\bsec\bmin\thour\19%02d:%02d:%02d\vformat\vstring\a*t\tdate\aos!luasnip.extras.select_choice\frequire\18choice_activeç\5\1\0\f\0$\0A6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\0026\3\0\0'\5\6\0B\3\2\0029\3\a\0035\5\b\0B\3\2\0019\3\t\0009\3\n\0035\5\v\0004\6\0\b6\a\0\0'\t\f\0B\a\2\0029\a\r\a5\b\17\0005\t\15\0004\n\3\0005\v\14\0>\v\1\n=\n\16\t=\t\18\b<\b\a\0066\a\0\0'\t\f\0B\a\2\0029\a\19\a5\b\22\0005\t\21\0004\n\3\0005\v\20\0>\v\1\n=\n\16\t=\t\18\b<\b\a\6=\6\23\5B\3\2\1\18\3\2\0005\5\24\0'\6\25\0003\a\26\0B\3\4\1\18\3\2\0005\5\27\0'\6\28\0003\a\29\0B\3\4\1\18\3\2\0005\5\30\0'\6\31\0003\a \0B\3\4\1\18\3\2\0005\5!\0'\6\"\0003\a#\0B\3\4\0012\0\0ÄK\0\1\0\0\n<c-l>\1\3\0\0\6i\6s\0\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\3\0\0\6i\6s\0\n<a-p>\1\3\0\0\6i\6s\rext_opts\1\0\0\1\0\0\1\3\0\0\b‚óè\16GruvboxBlue\15insertNode\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\b‚óè\18GruvboxOrange\15choiceNode\23luasnip.util.types\1\0\3\fhistory\2\24enable_autosnippets\2\17updateevents\30TextChanged, TextChangedI\15set_config\vconfig\1\0\1\npaths\29~/.config/nvim/snippets/\tload\29luasnip.loaders.from_lua\bset\vkeymap\bvim\1\0\2\vsilent\2\fnoremap\2\fluasnip\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["baleia.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/baleia.nvim",
    url = "https://github.com/m00qek/baleia.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n˙\4\0\0\5\0\28\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\3=\3\23\0024\3\0\0=\3\24\0024\3\0\0=\3\25\0025\3\26\0=\3\27\2B\0\2\1K\0\1\0\17integrations\1\0\6\14telescope\2\rnvimtree\2\rgitsigns\2\vnotify\1\bcmp\2\tmini\1\22custom_highlights\20color_overrides\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\fenabled\1\15percentage\4≥ÊÃô\3≥Êå˛\3\15background\1\0\2\nlight\nlatte\tdark\nmocha\1\0\6\16term_colors\1\23show_end_of_buffer\1\27transparent_background\1\fflavour\nmocha\fno_bold\1\14no_italic\1\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["chatgpt.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/chatgpt.nvim",
    url = "https://github.com/terror/chatgpt.nvim"
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
  ["cmp-latex-symbols"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp-latex-symbols",
    url = "https://github.com/kdheepak/cmp-latex-symbols"
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
  cmp_luasnip = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nº\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\rrelative\vcursor\bcol\3\1\brow\3\0\vborder\vsingle\nstyle\fminimal\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3Ë\a\18virt_text_pos\beol\22ignore_whitespace\1\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\nsigns\1\0\n\14word_diff\1\vlinehl\1\nnumhl\1\15signcolumn\2!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\20update_debounce\3d\20max_file_length\3¿∏\2\18sign_priority\3\6\23current_line_blame\1\24attach_to_untracked\2\14untracked\1\0\1\ttext\b‚îÜ\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\b‚Äæ\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\b‚îÇ\badd\1\0\0\1\0\1\ttext\b‚îÇ\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["image.nvim"] = {
    config = { "\27LJ\2\nø\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vevents\1\0\1\26update_on_nvim_resize\2\vrender\1\0\0\1\0\5\16min_padding\3\5\21background_color\1\21foreground_color\1\15use_dither\2\15show_label\2\nsetup\nimage\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/image.nvim",
    url = "https://github.com/samodostal/image.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n˛\1\0\0\5\0\t\0\0226\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\1K\0\1\0\1\0\3\tbold\2\afg\f#c3e88d\14nocombine\2\23LeapLabelSecondary\1\0\3\tbold\2\afg\f#4fd6be\14nocombine\2\21LeapLabelPrimary\1\0\3\tbold\2\afg\f#7aa2f7\14nocombine\2\14LeapMatch\16nvim_set_hl\bapi\bvim¬\4\1\0\a\0\25\00076\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\4Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0019\2\6\1B\2\1\0019\2\a\0014\3\0\0=\3\b\0029\2\a\1+\3\2\0=\3\t\0026\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\f\0005\6\r\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\14\0005\6\15\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\16\0005\6\17\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\18\0005\6\19\0B\2\4\0016\2\3\0009\2\n\0029\2\20\2'\4\21\0005\5\23\0003\6\22\0=\6\24\5B\2\3\1K\0\1\0\rcallback\1\0\0\0\16ColorScheme\24nvim_create_autocmd\1\0\3\tbold\2\afg\f#c3e88d\14nocombine\2\23LeapLabelSecondary\1\0\3\tbold\2\afg\f#4fd6be\14nocombine\2\21LeapLabelPrimary\1\0\3\tbold\2\afg\f#7aa2f7\14nocombine\2\14LeapMatch\1\0\1\tlink\fComment\17LeapBackdrop\16nvim_set_hl\bapi*highlight_unlabeled_phase_one_targets\16safe_labels\topts\25add_default_mappings\20Leap not found!\vnotify\bvim\tleap\frequire\npcall\0" },
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
    config = { "\27LJ\2\nÄ\3\0\0\4\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\rmappings\1\0\5\fpreview\am:\tnext\am:\rset_next\bm, \tprev\1\18set_bookmark0\am0\15bookmark_0\1\0\3\14virt_text\16hello world\rannotate\1\tsign\b‚öë\23excluded_filetypes\18sign_priority\1\0\4\fbuiltin\3\b\rbookmark\3\20\nupper\3\15\nlower\3\n\18builtin_marks\1\5\0\0\6.\6<\6>\6^\1\0\4\21refresh_interval\3˙\1\22force_write_shada\1\vcyclic\2\21default_mappings\2\nsetup\nmarks\frequire\0" },
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
    config = { "\27LJ\2\n˘\3\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\3B\1\2\1K\0\1\0\29autosave_ignore_buftypes\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\25autosave_ignore_dirs\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\26autosave_last_session\2\29autosave_only_in_session\2\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\31autosave_ignore_not_normal\2\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nnoice\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nï\2\0\0\a\0\17\0\0316\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0019\2\2\0009\2\4\0024\3\n\0009\4\5\1>\4\1\0039\4\6\2>\4\2\0039\4\a\1>\4\3\0039\4\b\2>\4\4\0039\4\t\1>\4\5\0039\4\n\1>\4\6\0039\4\v\2>\4\a\0039\4\f\1>\4\b\0039\4\r\2>\4\t\0039\4\14\0005\6\15\0=\3\16\6B\4\2\1K\0\1\0\fsources\1\0\0\nsetup\fcpplint\17clang_format\15shellcheck\rbeautysh\16latexindent\rluacheck\vstylua\vflake8\tyapf\16diagnostics\15formatting\rbuiltins\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nÄ\4\0\0\b\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\15\rcheck_ts\1\15break_undo\2\16enable_abbr\1\28enable_bracket_in_quote\2\30enable_check_bracket_line\2\22enable_afterquote\2\21enable_moveright\2\vmap_bs\2\22ignored_next_char\23[%w%%%'%[%\"%.%`%$]\28disable_in_replace_mode\2\27disable_in_visualblock\1\21disable_in_macro\1\fmap_c_w\1\fmap_c_h\1\vmap_cr\2\1\3\0\0\20TelescopePrompt\18spectre_panel\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    config = { "\27LJ\2\n£\1\0\2\t\0\a\1\24+\2\2\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\0026\4\0\0009\4\3\0049\4\4\4\18\6\3\0B\4\2\2*\5\0\0\1\5\4\0X\5\2Ä+\2\1\0X\5\aÄ\18\a\3\0009\5\5\3'\b\6\0B\5\3\2\15\0\5\0X\6\1Ä+\2\1\0L\2\2\0\17^fugitive://\nmatch\rgetfsize\afn\22nvim_buf_get_name\bapi\bvimÄ¿\f…\4\1\0\6\0\23\0\0276\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0005\4\b\0=\4\t\0033\4\n\0=\4\v\3=\3\f\0025\3\r\0=\3\14\0025\3\20\0005\4\16\0005\5\15\0=\5\17\0045\5\18\0=\5\19\4=\4\21\3=\3\22\2B\0\2\1K\0\1\0\vfilter\bfzf\1\0\0\15extra_opts\1\5\0\0\v--bind\22ctrl-o:toggle-all\r--prompt\a> \15action_for\1\0\0\1\0\2\vctrl-s\nsplit\vctrl-t\rtab drop\rfunc_map\1\0\6\ttabc\5\tdrop\6o\16ptogglemode\az,\nsplit\n<C-s>\ftabdrop\n<C-t>\nopenc\6O\fpreview\22should_preview_cb\0\17border_chars\1\n\0\0\b‚îÉ\b‚îÉ\b‚îÅ\b‚îÅ\b‚îè\b‚îì\b‚îó\b‚îõ\b‚ñà\1\0\4\17delay_syntax\3P\16win_vheight\3\f\15win_height\3\f\15show_title\1\1\0\2\23auto_resize_height\2\16auto_enable\2\nsetup\bbqf\frequireY    hi BqfPreviewBorder guifg=#50a14f ctermfg=71\n    hi link BqfPreviewRange Search\n\bcmd\bvim\0" },
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
    config = { "\27LJ\2\nµ\2\0\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\rbuftypes\25user_default_options\tsass\fparsers\1\2\0\0\bcss\1\0\1\venable\1\1\0\r\rtailwind\1\vcss_fn\1\bcss\1\vhsl_fn\1\vrgb_fn\1\rAARRGGBB\1\rRRGGBBAA\1\nnames\1\vRRGGBB\2\bRGB\2\tmode\15background\18always_update\1\16virtualtext\b‚ñ†\14filetypes\1\0\0\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
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
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\nå\a\0\0\a\0\31\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\24\0005\4\20\0005\5\18\0004\6\0\0=\6\19\5=\5\21\0045\5\22\0004\6\0\0=\6\19\5=\5\23\4=\4\25\0035\4\26\0004\5\0\0=\5\19\4=\4\27\3=\3\28\2B\0\2\0016\0\0\0'\2\25\0B\0\2\0029\0\29\0'\2\1\0B\0\2\0016\0\0\0'\2\25\0B\0\2\0029\0\29\0'\2\30\0B\0\2\1K\0\1\0\15macroscope\19load_extension\tkeys\bfzf\1\0\3\npaste\vctrl-p\vselect\fdefault\17paste_behind\vctrl-k\14telescope\1\0\0\6n\1\0\6\npaste\6p\vdelete\6d\vreplay\6q\17paste_behind\6P\tedit\6e\vselect\t<cr>\6i\1\0\0\vcustom\1\0\6\npaste\n<c-p>\vdelete\n<c-d>\vreplay\n<c-q>\17paste_behind\n<c-k>\tedit\n<c-e>\vselect\t<cr>\21on_custom_action\1\0\1\20close_telescope\2\14on_replay\1\0\3\18move_to_front\1\fset_reg\1\20close_telescope\2\ron_paste\1\0\3\18move_to_front\1\fset_reg\1\20close_telescope\2\14on_select\1\0\2\18move_to_front\1\20close_telescope\2\fdb_path\31/databases/neoclip.sqlite3\tdata\fstdpath\afn\bvim\1\0\t\fpreview\2\fhistory\3Ë\a\24content_spec_column\1\25enable_macro_history\2\28default_register_macros\6q\21default_register\6\"\20continuous_sync\1\17length_limit\3ÄÄ@\30enable_persistent_history\2\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n’\3\0\0\b\0\24\0#6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\1)\2\1\0=\2\5\0016\1\2\0009\1\6\1+\2\2\0=\2\a\0019\1\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\16\0004\6\3\0005\a\15\0>\a\1\6=\6\17\5=\5\18\4=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3B\1\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\2\21hide_root_folder\2\nwidth\3\30\24update_focused_file\1\0\2\16update_root\2\venable\2\bgit\1\0\1\venable\1\1\0\3\23sync_root_with_cwd\2\20respect_buf_cwd\2\fsort_by\19case_sensitive\nsetup\18termguicolors\bopt\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nã\4\0\0\6\0\21\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0009\1\15\1'\2\17\0=\2\16\0016\1\14\0009\1\15\1'\2\19\0=\2\18\0016\1\14\0009\1\15\1)\2c\0=\2\20\1K\0\1\0\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\21node_decremental\t<BS>\21node_incremental\t<CR>\19init_selection\t<CR>\22scope_incremental\n<TAB>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\6c\bcpp\tbash\tjson\bvim\blua\vpython\nlatex\rmarkdown\20markdown_inline\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedarkpro.nvim"] = {
    config = { "\27LJ\2\në\a\0\0\4\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0=\3\b\0024\3\0\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\foptions\1\0\4\15cursorline\1\31highlight_inactive_windows\1\20terminal_colors\2\17transparency\1\vstyles\1\0\r\rcomments\vitalic\fmethods\tNONE\14constants\tNONE\14variables\tNONE\15parameters\tNONE\17conditionals\vitalic\14operators\tNONE\17virtual_text\tNONE\fnumbers\tNONE\fstrings\tNONE\ntypes\tNONE\14functions\vitalic\rkeywords\17bold, italic\15highlights\fplugins\1\0!\nmarks\2\24lsp_semantic_tokens\2\rlsp_saga\2\tleap\2\15indentline\2\bhop\2\14dashboard\2\fcopilot\2\vbarbar\2\vaerial\2\15treesitter\2\16nvim_notify\2\14telescope\2\rgitsigns\2\vpacker\2\14which_key\2\15vim_ultest\2\ftrouble\2\15toggleterm\2\rstartify\2\fpolygot\2\fop_nvim\2\20nvim_ts_rainbow\2\14nvim_tree\2\15nvim_navic\2\rnvim_lsp\2\17nvim_hlslens\2\16nvim_dap_ui\2\rnvim_dap\2\rnvim_bqf\2\rnvim_cmp\2\rneo_tree\2\fneotest\2\14filetypes\1\0\15\trust\2\truby\2\bphp\2\rmarkdown\2\15javascript\2\tjava\2\thtml\2\ttoml\2\15typescript\2\tyaml\2\bxml\2\bvue\2\20typescriptreact\2\blua\2\vpython\2\vcolors\1\0\0\nsetup\15onedarkpro\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
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
  ["registers.nvim"] = {
    config = { "\27LJ\2\nç\t\0\0\t\0%\00066\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\6\0009\5\4\0005\a\5\0B\5\2\2=\5\a\0049\5\4\0005\a\b\0B\5\2\2=\5\t\0049\5\4\0005\a\n\0B\5\2\2=\5\v\0049\5\f\0005\a\r\0B\5\2\2=\5\1\0049\5\f\0B\5\1\2=\5\14\0049\5\15\0B\5\1\2=\5\16\0049\5\17\0B\5\1\2=\5\18\0049\5\19\0B\5\1\2=\5\20\0049\5\21\0B\5\1\2=\5\22\4=\4\23\0035\4\28\0009\5\24\0005\a\26\0005\b\25\0=\b\27\aB\5\2\2=\5\29\4=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\3B\1\2\1K\0\1\0\20sign_highlights\1\0\r\vdelete\fSpecial\15black_hole\nError\tyank\14Delimiter\15expression\14Exception\fhistory\vNumber\14read_only\tType\nnamed\tTodo\funnamed\14Statement\15cursorline\vVisual\14selection\rConstant\fdefault\rFunction\16last_search\bTag\21alternate_buffer\rOperator\vwindow\1\0\4\vborder\tnone\17transparency\3\n\25highlight_cursorline\2\14max_width\3d\fsymbols\1\0\6\btab\a¬∑\fnewline\b‚èé\28register_type_blockwise\b·µá\27register_type_linewise\aÀ°\27register_type_charwise\b·∂ú\nspace\6 \vevents\28on_register_highlighted\1\0\0\fif_mode\1\0\0\1\3\0\0\vinsert\npaste!preview_highlighted_register\14bind_keys\t<BS>\31clear_highlighted_register\n<C-p>\19move_cursor_up\n<C-n>\21move_cursor_down\n<Esc>\17close_window\t<CR>\1\0\1\ndelay\4ö≥ÊÃ\tô≥Ê˝\3\19apply_register\vinsert\1\0\1\tmode\vinsert\vvisual\1\0\1\tmode\vmotion\vnormal\1\0\0\1\0\1\tmode\vmotion\16show_window\1\0\a\tshow4*+\"-/_=#%.0123456789abcdefghijklmnopqrstuvwxyz:\24show_register_types\2\25hide_only_whitespace\2\20trim_whitespace\2\21system_clipboard\2\26register_user_command\2\15show_empty\2\nsetup\14registers\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
  },
  ["sqlite.lua"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/opt/sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n€\2\0\2\5\0\19\0%'\2\0\0005\3\3\0009\4\2\1=\4\4\0039\4\5\1=\4\6\3=\3\1\0005\3\b\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\a\0005\3\n\0=\2\4\3=\3\t\0005\3\f\0=\2\4\3=\2\6\3=\3\v\0005\3\14\0=\2\4\3=\2\6\3=\3\r\0005\3\16\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\15\0005\3\18\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\17\0K\0\1\0\1\0\0\26TelescopeResultsTitle\1\0\0\26TelescopePreviewTitle\1\0\0\25TelescopePromptTitle\1\0\0\26TelescopePromptBorder\1\0\0\26TelescopePromptNormal\1\0\0\20TelescopeBorder\afg\ffg_dark\abg\1\0\0\fbg_dark\20TelescopeNormal\f#2d3149⁄\3\1\0\n\0\25\1:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0014\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\0014\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0009\6\f\0014\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0009\6\14\0014\a\0\0B\2\5\0019\2\15\0005\4\17\0003\5\16\0=\5\18\0045\5\21\0004\6\3\0006\a\0\0'\t\19\0B\a\2\0029\a\20\a4\t\0\0B\a\2\0?\a\0\0=\6\22\5=\5\23\4B\2\2\0019\2\24\0'\4\22\0B\2\2\1K\0\1\0\19load_extension\15extensions\14ui-select\1\0\0\17get_dropdown\21telescope.themes\18on_highlights\1\0\0\0\nsetup\14help_tags\15<leader>fh\fbuffers\15<leader>fb\14live_grep\15<leader>fg\15find_files\15<leader>ff\6n\bset\vkeymap\bvim\22telescope.builtin\14telescope\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0\v\0\2\2\0\0\0\1K\0\1\0ò\3\1\0\5\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0023\3\16\0=\3\17\2B\0\2\1K\0\1\0\18on_highlights\0\14on_colors\0\rsidebars\1\3\0\0\aqf\thelp\vstyles\14variables\14functions\rkeywords\1\0\1\vitalic\2\rcomments\1\0\2\vfloats\tdark\rsidebars\tdark\1\0\1\vitalic\2\1\0\b\20terminal_colors\2\16transparent\1\17dim_inactive\1\29hide_inactive_statusline\1\19day_brightness\4≥ÊÃô\3≥ÊÃ˛\3\17lualine_bold\1\16light_style\bday\nstyle\nstorm\nsetup\15tokyonight\frequire\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  vimtex = {
    config = { "\27LJ\2\nx\0\0\2\0\a\0\r6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\6o\26vimtex_syntax_enabled\6g\bvim\0" },
    loaded = true,
    path = "/home/xfw/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^sqlite"] = "sqlite.lua"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nÄ\4\0\0\b\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\0\15\rcheck_ts\1\15break_undo\2\16enable_abbr\1\28enable_bracket_in_quote\2\30enable_check_bracket_line\2\22enable_afterquote\2\21enable_moveright\2\vmap_bs\2\22ignored_next_char\23[%w%%%'%[%\"%.%`%$]\28disable_in_replace_mode\2\27disable_in_visualblock\1\21disable_in_macro\1\fmap_c_w\1\fmap_c_h\1\vmap_cr\2\1\3\0\0\20TelescopePrompt\18spectre_panel\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: registers.nvim
time([[Config for registers.nvim]], true)
try_loadstring("\27LJ\2\nç\t\0\0\t\0%\00066\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\6\0009\5\4\0005\a\5\0B\5\2\2=\5\a\0049\5\4\0005\a\b\0B\5\2\2=\5\t\0049\5\4\0005\a\n\0B\5\2\2=\5\v\0049\5\f\0005\a\r\0B\5\2\2=\5\1\0049\5\f\0B\5\1\2=\5\14\0049\5\15\0B\5\1\2=\5\16\0049\5\17\0B\5\1\2=\5\18\0049\5\19\0B\5\1\2=\5\20\0049\5\21\0B\5\1\2=\5\22\4=\4\23\0035\4\28\0009\5\24\0005\a\26\0005\b\25\0=\b\27\aB\5\2\2=\5\29\4=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\3B\1\2\1K\0\1\0\20sign_highlights\1\0\r\vdelete\fSpecial\15black_hole\nError\tyank\14Delimiter\15expression\14Exception\fhistory\vNumber\14read_only\tType\nnamed\tTodo\funnamed\14Statement\15cursorline\vVisual\14selection\rConstant\fdefault\rFunction\16last_search\bTag\21alternate_buffer\rOperator\vwindow\1\0\4\vborder\tnone\17transparency\3\n\25highlight_cursorline\2\14max_width\3d\fsymbols\1\0\6\btab\a¬∑\fnewline\b‚èé\28register_type_blockwise\b·µá\27register_type_linewise\aÀ°\27register_type_charwise\b·∂ú\nspace\6 \vevents\28on_register_highlighted\1\0\0\fif_mode\1\0\0\1\3\0\0\vinsert\npaste!preview_highlighted_register\14bind_keys\t<BS>\31clear_highlighted_register\n<C-p>\19move_cursor_up\n<C-n>\21move_cursor_down\n<Esc>\17close_window\t<CR>\1\0\1\ndelay\4ö≥ÊÃ\tô≥Ê˝\3\19apply_register\vinsert\1\0\1\tmode\vinsert\vvisual\1\0\1\tmode\vmotion\vnormal\1\0\0\1\0\1\tmode\vmotion\16show_window\1\0\a\tshow4*+\"-/_=#%.0123456789abcdefghijklmnopqrstuvwxyz:\24show_register_types\2\25hide_only_whitespace\2\20trim_whitespace\2\21system_clipboard\2\26register_user_command\2\15show_empty\2\nsetup\14registers\frequire\0", "config", "registers.nvim")
time([[Config for registers.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nÁ\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\3B\1\2\1K\0\1\0\rmappings\1\0\2\nextra\2\nbasic\2\nextra\1\0\3\beol\bgcA\nabove\bgcO\nbelow\bgco\ropleader\1\0\2\nblock\agb\tline\agc\ftoggler\1\0\2\nblock\bgbc\tline\bgcc\1\0\2\fpadding\2\vsticky\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nï\2\0\0\a\0\17\0\0316\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0019\2\2\0009\2\4\0024\3\n\0009\4\5\1>\4\1\0039\4\6\2>\4\2\0039\4\a\1>\4\3\0039\4\b\2>\4\4\0039\4\t\1>\4\5\0039\4\n\1>\4\6\0039\4\v\2>\4\a\0039\4\f\1>\4\b\0039\4\r\2>\4\t\0039\4\14\0005\6\15\0=\3\16\6B\4\2\1K\0\1\0\fsources\1\0\0\nsetup\fcpplint\17clang_format\15shellcheck\rbeautysh\16latexindent\rluacheck\vstylua\vflake8\tyapf\16diagnostics\15formatting\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
try_loadstring("\27LJ\2\nÄ\3\0\0\4\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\rmappings\1\0\5\fpreview\am:\tnext\am:\rset_next\bm, \tprev\1\18set_bookmark0\am0\15bookmark_0\1\0\3\14virt_text\16hello world\rannotate\1\tsign\b‚öë\23excluded_filetypes\18sign_priority\1\0\4\fbuiltin\3\b\rbookmark\3\20\nupper\3\15\nlower\3\n\18builtin_marks\1\5\0\0\6.\6<\6>\6^\1\0\4\21refresh_interval\3˙\1\22force_write_shada\1\vcyclic\2\21default_mappings\2\nsetup\nmarks\frequire\0", "config", "marks.nvim")
time([[Config for marks.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nG\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0¿\vexpand\23expand_or_jumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2\1\0B\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\tjump\rjumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2ˇˇB\0\2\1K\0\1\0\0¿\tjump\rjumpable€\1\0\0\a\1\r\0\25-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\5Ä6\0\1\0'\2\2\0B\0\2\2B\0\1\1X\0\14Ä6\0\3\0009\0\4\0'\2\5\0B\0\2\0026\1\6\0009\1\a\1'\3\b\0009\4\t\0009\5\n\0009\6\v\0B\1\5\0026\2\f\0\18\4\1\0B\2\2\1K\0\1\0\0¿\nprint\bsec\bmin\thour\19%02d:%02d:%02d\vformat\vstring\a*t\tdate\aos!luasnip.extras.select_choice\frequire\18choice_activeç\5\1\0\f\0$\0A6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\0026\3\0\0'\5\6\0B\3\2\0029\3\a\0035\5\b\0B\3\2\0019\3\t\0009\3\n\0035\5\v\0004\6\0\b6\a\0\0'\t\f\0B\a\2\0029\a\r\a5\b\17\0005\t\15\0004\n\3\0005\v\14\0>\v\1\n=\n\16\t=\t\18\b<\b\a\0066\a\0\0'\t\f\0B\a\2\0029\a\19\a5\b\22\0005\t\21\0004\n\3\0005\v\20\0>\v\1\n=\n\16\t=\t\18\b<\b\a\6=\6\23\5B\3\2\1\18\3\2\0005\5\24\0'\6\25\0003\a\26\0B\3\4\1\18\3\2\0005\5\27\0'\6\28\0003\a\29\0B\3\4\1\18\3\2\0005\5\30\0'\6\31\0003\a \0B\3\4\1\18\3\2\0005\5!\0'\6\"\0003\a#\0B\3\4\0012\0\0ÄK\0\1\0\0\n<c-l>\1\3\0\0\6i\6s\0\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\3\0\0\6i\6s\0\n<a-p>\1\3\0\0\6i\6s\rext_opts\1\0\0\1\0\0\1\3\0\0\b‚óè\16GruvboxBlue\15insertNode\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\b‚óè\18GruvboxOrange\15choiceNode\23luasnip.util.types\1\0\3\fhistory\2\24enable_autosnippets\2\17updateevents\30TextChanged, TextChangedI\15set_config\vconfig\1\0\1\npaths\29~/.config/nvim/snippets/\tload\29luasnip.loaders.from_lua\bset\vkeymap\bvim\1\0\2\vsilent\2\fnoremap\2\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nº\5\0\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\rrelative\vcursor\bcol\3\1\brow\3\0\vborder\vsingle\nstyle\fminimal\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3Ë\a\18virt_text_pos\beol\22ignore_whitespace\1\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\nsigns\1\0\n\14word_diff\1\vlinehl\1\nnumhl\1\15signcolumn\2!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\20update_debounce\3d\20max_file_length\3¿∏\2\18sign_priority\3\6\23current_line_blame\1\24attach_to_untracked\2\14untracked\1\0\1\ttext\b‚îÜ\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\b‚Äæ\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\b‚îÇ\badd\1\0\0\1\0\1\ttext\b‚îÇ\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n˙\4\0\0\5\0\28\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\3=\3\23\0024\3\0\0=\3\24\0024\3\0\0=\3\25\0025\3\26\0=\3\27\2B\0\2\1K\0\1\0\17integrations\1\0\6\14telescope\2\rnvimtree\2\rgitsigns\2\vnotify\1\bcmp\2\tmini\1\22custom_highlights\20color_overrides\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\fenabled\1\15percentage\4≥ÊÃô\3≥Êå˛\3\15background\1\0\2\nlight\nlatte\tdark\nmocha\1\0\6\16term_colors\1\23show_end_of_buffer\1\27transparent_background\1\fflavour\nmocha\fno_bold\1\14no_italic\1\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n’\3\0\0\b\0\24\0#6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\1)\2\1\0=\2\5\0016\1\2\0009\1\6\1+\2\2\0=\2\a\0019\1\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\16\0004\6\3\0005\a\15\0>\a\1\6=\6\17\5=\5\18\4=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3B\1\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\2\21hide_root_folder\2\nwidth\3\30\24update_focused_file\1\0\2\16update_root\2\venable\2\bgit\1\0\1\venable\1\1\0\3\23sync_root_with_cwd\2\20respect_buf_cwd\2\fsort_by\19case_sensitive\nsetup\18termguicolors\bopt\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\n˘\3\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\3B\1\2\1K\0\1\0\29autosave_ignore_buftypes\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\25autosave_ignore_dirs\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\26autosave_last_session\2\29autosave_only_in_session\2\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\31autosave_ignore_not_normal\2\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: image.nvim
time([[Config for image.nvim]], true)
try_loadstring("\27LJ\2\nø\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vevents\1\0\1\26update_on_nvim_resize\2\vrender\1\0\0\1\0\5\16min_padding\3\5\21background_color\1\21foreground_color\1\15use_dither\2\15show_label\2\nsetup\nimage\frequire\0", "config", "image.nvim")
time([[Config for image.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0\v\0\2\2\0\0\0\1K\0\1\0ò\3\1\0\5\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0023\3\16\0=\3\17\2B\0\2\1K\0\1\0\18on_highlights\0\14on_colors\0\rsidebars\1\3\0\0\aqf\thelp\vstyles\14variables\14functions\rkeywords\1\0\1\vitalic\2\rcomments\1\0\2\vfloats\tdark\rsidebars\tdark\1\0\1\vitalic\2\1\0\b\20terminal_colors\2\16transparent\1\17dim_inactive\1\29hide_inactive_statusline\1\19day_brightness\4≥ÊÃô\3≥ÊÃ˛\3\17lualine_bold\1\16light_style\bday\nstyle\nstorm\nsetup\15tokyonight\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nã\4\0\0\6\0\21\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0009\1\15\1'\2\17\0=\2\16\0016\1\14\0009\1\15\1'\2\19\0=\2\18\0016\1\14\0009\1\15\1)\2c\0=\2\20\1K\0\1\0\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\vindent\1\0\1\venable\1\26incremental_selection\fkeymaps\1\0\4\21node_decremental\t<BS>\21node_incremental\t<CR>\19init_selection\t<CR>\22scope_incremental\n<TAB>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\6c\bcpp\tbash\tjson\bvim\blua\vpython\nlatex\rmarkdown\20markdown_inline\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nµ\2\0\0\6\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\rbuftypes\25user_default_options\tsass\fparsers\1\2\0\0\bcss\1\0\1\venable\1\1\0\r\rtailwind\1\vcss_fn\1\bcss\1\vhsl_fn\1\vrgb_fn\1\rAARRGGBB\1\rRRGGBBAA\1\nnames\1\vRRGGBB\2\bRGB\2\tmode\15background\18always_update\1\16virtualtext\b‚ñ†\14filetypes\1\0\0\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: noice.nvim
time([[Config for noice.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nnoice\frequire\0", "config", "noice.nvim")
time([[Config for noice.nvim]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\n˛\1\0\0\5\0\t\0\0226\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\1K\0\1\0\1\0\3\tbold\2\afg\f#c3e88d\14nocombine\2\23LeapLabelSecondary\1\0\3\tbold\2\afg\f#4fd6be\14nocombine\2\21LeapLabelPrimary\1\0\3\tbold\2\afg\f#7aa2f7\14nocombine\2\14LeapMatch\16nvim_set_hl\bapi\bvim¬\4\1\0\a\0\25\00076\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\4Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0019\2\6\1B\2\1\0019\2\a\0014\3\0\0=\3\b\0029\2\a\1+\3\2\0=\3\t\0026\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\f\0005\6\r\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\14\0005\6\15\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\16\0005\6\17\0B\2\4\0016\2\3\0009\2\n\0029\2\v\2)\4\0\0'\5\18\0005\6\19\0B\2\4\0016\2\3\0009\2\n\0029\2\20\2'\4\21\0005\5\23\0003\6\22\0=\6\24\5B\2\3\1K\0\1\0\rcallback\1\0\0\0\16ColorScheme\24nvim_create_autocmd\1\0\3\tbold\2\afg\f#c3e88d\14nocombine\2\23LeapLabelSecondary\1\0\3\tbold\2\afg\f#4fd6be\14nocombine\2\21LeapLabelPrimary\1\0\3\tbold\2\afg\f#7aa2f7\14nocombine\2\14LeapMatch\1\0\1\tlink\fComment\17LeapBackdrop\16nvim_set_hl\bapi*highlight_unlabeled_phase_one_targets\16safe_labels\topts\25add_default_mappings\20Leap not found!\vnotify\bvim\tleap\frequire\npcall\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: onedarkpro.nvim
time([[Config for onedarkpro.nvim]], true)
try_loadstring("\27LJ\2\në\a\0\0\4\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0=\3\b\0024\3\0\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\foptions\1\0\4\15cursorline\1\31highlight_inactive_windows\1\20terminal_colors\2\17transparency\1\vstyles\1\0\r\rcomments\vitalic\fmethods\tNONE\14constants\tNONE\14variables\tNONE\15parameters\tNONE\17conditionals\vitalic\14operators\tNONE\17virtual_text\tNONE\fnumbers\tNONE\fstrings\tNONE\ntypes\tNONE\14functions\vitalic\rkeywords\17bold, italic\15highlights\fplugins\1\0!\nmarks\2\24lsp_semantic_tokens\2\rlsp_saga\2\tleap\2\15indentline\2\bhop\2\14dashboard\2\fcopilot\2\vbarbar\2\vaerial\2\15treesitter\2\16nvim_notify\2\14telescope\2\rgitsigns\2\vpacker\2\14which_key\2\15vim_ultest\2\ftrouble\2\15toggleterm\2\rstartify\2\fpolygot\2\fop_nvim\2\20nvim_ts_rainbow\2\14nvim_tree\2\15nvim_navic\2\rnvim_lsp\2\17nvim_hlslens\2\16nvim_dap_ui\2\rnvim_dap\2\rnvim_bqf\2\rnvim_cmp\2\rneo_tree\2\fneotest\2\14filetypes\1\0\15\trust\2\truby\2\bphp\2\rmarkdown\2\15javascript\2\tjava\2\thtml\2\ttoml\2\15typescript\2\tyaml\2\bxml\2\bvue\2\20typescriptreact\2\blua\2\vpython\2\vcolors\1\0\0\nsetup\15onedarkpro\frequire\0", "config", "onedarkpro.nvim")
time([[Config for onedarkpro.nvim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\nå\a\0\0\a\0\31\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\24\0005\4\20\0005\5\18\0004\6\0\0=\6\19\5=\5\21\0045\5\22\0004\6\0\0=\6\19\5=\5\23\4=\4\25\0035\4\26\0004\5\0\0=\5\19\4=\4\27\3=\3\28\2B\0\2\0016\0\0\0'\2\25\0B\0\2\0029\0\29\0'\2\1\0B\0\2\0016\0\0\0'\2\25\0B\0\2\0029\0\29\0'\2\30\0B\0\2\1K\0\1\0\15macroscope\19load_extension\tkeys\bfzf\1\0\3\npaste\vctrl-p\vselect\fdefault\17paste_behind\vctrl-k\14telescope\1\0\0\6n\1\0\6\npaste\6p\vdelete\6d\vreplay\6q\17paste_behind\6P\tedit\6e\vselect\t<cr>\6i\1\0\0\vcustom\1\0\6\npaste\n<c-p>\vdelete\n<c-d>\vreplay\n<c-q>\17paste_behind\n<c-k>\tedit\n<c-e>\vselect\t<cr>\21on_custom_action\1\0\1\20close_telescope\2\14on_replay\1\0\3\18move_to_front\1\fset_reg\1\20close_telescope\2\ron_paste\1\0\3\18move_to_front\1\fset_reg\1\20close_telescope\2\14on_select\1\0\2\18move_to_front\1\20close_telescope\2\fdb_path\31/databases/neoclip.sqlite3\tdata\fstdpath\afn\bvim\1\0\t\fpreview\2\fhistory\3Ë\a\24content_spec_column\1\25enable_macro_history\2\28default_register_macros\6q\21default_register\6\"\20continuous_sync\1\17length_limit\3ÄÄ@\30enable_persistent_history\2\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\nx\0\0\2\0\a\0\r6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\6o\26vimtex_syntax_enabled\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n€\2\0\2\5\0\19\0%'\2\0\0005\3\3\0009\4\2\1=\4\4\0039\4\5\1=\4\6\3=\3\1\0005\3\b\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\a\0005\3\n\0=\2\4\3=\3\t\0005\3\f\0=\2\4\3=\2\6\3=\3\v\0005\3\14\0=\2\4\3=\2\6\3=\3\r\0005\3\16\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\15\0005\3\18\0009\4\2\1=\4\4\0039\4\2\1=\4\6\3=\3\17\0K\0\1\0\1\0\0\26TelescopeResultsTitle\1\0\0\26TelescopePreviewTitle\1\0\0\25TelescopePromptTitle\1\0\0\26TelescopePromptBorder\1\0\0\26TelescopePromptNormal\1\0\0\20TelescopeBorder\afg\ffg_dark\abg\1\0\0\fbg_dark\20TelescopeNormal\f#2d3149⁄\3\1\0\n\0\25\1:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0014\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\0014\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0009\6\f\0014\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0009\6\14\0014\a\0\0B\2\5\0019\2\15\0005\4\17\0003\5\16\0=\5\18\0045\5\21\0004\6\3\0006\a\0\0'\t\19\0B\a\2\0029\a\20\a4\t\0\0B\a\2\0?\a\0\0=\6\22\5=\5\23\4B\2\2\0019\2\24\0'\4\22\0B\2\2\1K\0\1\0\19load_extension\15extensions\14ui-select\1\0\0\17get_dropdown\21telescope.themes\18on_highlights\1\0\0\0\nsetup\14help_tags\15<leader>fh\fbuffers\15<leader>fb\14live_grep\15<leader>fg\15find_files\15<leader>ff\6n\bset\vkeymap\bvim\22telescope.builtin\14telescope\frequire\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-bqf
time([[Config for nvim-bqf]], true)
try_loadstring("\27LJ\2\n£\1\0\2\t\0\a\1\24+\2\2\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\0026\4\0\0009\4\3\0049\4\4\4\18\6\3\0B\4\2\2*\5\0\0\1\5\4\0X\5\2Ä+\2\1\0X\5\aÄ\18\a\3\0009\5\5\3'\b\6\0B\5\3\2\15\0\5\0X\6\1Ä+\2\1\0L\2\2\0\17^fugitive://\nmatch\rgetfsize\afn\22nvim_buf_get_name\bapi\bvimÄ¿\f…\4\1\0\6\0\23\0\0276\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0005\4\b\0=\4\t\0033\4\n\0=\4\v\3=\3\f\0025\3\r\0=\3\14\0025\3\20\0005\4\16\0005\5\15\0=\5\17\0045\5\18\0=\5\19\4=\4\21\3=\3\22\2B\0\2\1K\0\1\0\vfilter\bfzf\1\0\0\15extra_opts\1\5\0\0\v--bind\22ctrl-o:toggle-all\r--prompt\a> \15action_for\1\0\0\1\0\2\vctrl-s\nsplit\vctrl-t\rtab drop\rfunc_map\1\0\6\ttabc\5\tdrop\6o\16ptogglemode\az,\nsplit\n<C-s>\ftabdrop\n<C-t>\nopenc\6O\fpreview\22should_preview_cb\0\17border_chars\1\n\0\0\b‚îÉ\b‚îÉ\b‚îÅ\b‚îÅ\b‚îè\b‚îì\b‚îó\b‚îõ\b‚ñà\1\0\4\17delay_syntax\3P\16win_vheight\3\f\15win_height\3\f\15show_title\1\1\0\2\23auto_resize_height\2\16auto_enable\2\nsetup\bbqf\frequireY    hi BqfPreviewBorder guifg=#50a14f ctermfg=71\n    hi link BqfPreviewRange Search\n\bcmd\bvim\0", "config", "nvim-bqf")
time([[Config for nvim-bqf]], false)

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
