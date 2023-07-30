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
  -- Package Manager
  use 'wbthomason/packer.nvim'

  -- completion
  use 'hrsh7th/nvim-cmp' -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use 'hrsh7th/cmp-nvim-lsp'
  use "windwp/nvim-autopairs" -- Autopairs
  use "windwp/nvim-ts-autotag" -- HTML completions

  -- snippets
  use 'L3MON4D3/LuaSnip' ---snippet engin
  -- use "rafamadriz/friendly-snippets"

  -- LSP
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use "glepnir/lspsaga.nvim"

  -- Visual
  use 'ellisonleao/gruvbox.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'nvim-lualine/lualine.nvim' -- Status line


  -- Tree (Use tree Ctl + n)
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- Treesitter (Highlight)
  use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })

  -- Telescope (File searching)
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
