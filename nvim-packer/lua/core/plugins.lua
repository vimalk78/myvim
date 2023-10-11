local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Fuzzy finding
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use { 'tomasr/molokai' }

  -- didnt like this plugin
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

  use("tpope/vim-fugitive")

  use('machakann/vim-highlightedyank')

  -- use('ap/vim-buftabline') -- Shows buffer names in the top
  use('mengelbrecht/lightline-bufferline')
  use('itchyny/lightline.vim')

  --[[
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  ]]--

  -- " Semantic language support    
  use('neovim/nvim-lspconfig'    )
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- " automatic closing of quotes, parenthesis, brackets, etc<Paste>
  use('Raimondi/delimitMate') 

  -- " An AutoBufferFormatter for various languages
  use('google/vim-codefmt') 

  -- " required by vim-codefmt
  use('google/vim-maktaba')

  use('rust-lang/rust.vim')

  -- " To enable more of the features of rust-analyzer, such as inlay hints and more!
  use('simrat39/rust-tools.nvim')


  -- " Completion framework
  use('hrsh7th/nvim-cmp')

  -- " LSP completion source for nvim-cmp
  use('hrsh7th/cmp-nvim-lsp')

  -- " Snippet completion source for nvim-cmp
  use('hrsh7th/cmp-vsnip')


  -- " Other usefull completion sources
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-buffer')

  -- " Snippet engine
  use('hrsh7th/vim-vsnip')



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
