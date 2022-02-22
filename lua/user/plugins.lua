require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
  use 'windwp/nvim-autopairs'
  use 'nvim-lualine/lualine.nvim'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use { 
    'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  use 'kyazdani42/nvim-tree.lua'
  use 'joshdick/onedark.vim'
  use 'lewis6991/gitsigns.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip' -- Lua completion extension cmp
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-commentary'
  use 'mhinz/vim-startify'

  -- use another packages
end)
