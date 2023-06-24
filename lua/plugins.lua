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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- -------------------My plugins here--------------------------

  -- Colorscheme
  use { 'sainnhe/gruvbox-material' }
  use { 'rose-pine/neovim' }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use({
    "glepnir/lspsaga.nvim",
    opt = true,
    branch = "main",
    event = "LspAttach"
  })

  -- Autocompletion
  use 'onsails/lspkind-nvim' -- VSCode-like pictograms
  use 'L3MON4D3/LuaSnip'     -- Snippet engine
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer'   -- nvim-cmp source for buffer words
  use 'hrsh7th/nvim-cmp'     -- A completion engine plugin for neovim

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Auto closing tags and brackets
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  -- Discord
  use 'andweeb/presence.nvim'

  -- Telescope (Finder)
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kyazdani42/nvim-web-devicons'


  -- Bufferline (Tabs)
  use 'akinsho/nvim-bufferline.lua'

  -- null-ls
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Prettier
  use 'MunifTanjim/prettier.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Neotree
  use 'MunifTanjim/nui.nvim'
  use 'nvim-neo-tree/neo-tree.nvim'

  -- Zen mode
  use("folke/zen-mode.nvim")

  -- Harpoon
  use("theprimeagen/harpoon")

  -- -----------------------------------------
  if packer_bootstrap then
    require('packer').sync()
  end
end)
