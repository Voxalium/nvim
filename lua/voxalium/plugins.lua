local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)

  use 'nvim-lualine/lualine.nvim'
  use {"sainnhe/everforest", as ='everforest', config = function()vim.cmd("colorscheme everforest") end}
  use 'norcalli/nvim-colorizer.lua'
  
  use "nvim-lua/popup.nvim" 
  use "nvim-lua/plenary.nvim"    
  use "barrett-ruth/live-server.nvim"
  use "tpope/vim-fugitive"
  use "tpope/vim-sleuth"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "folke/which-key.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  use "MunifTanjim/prettier.nvim"
  use {'nvim-treesitter/nvim-treesitter', run =':TSUpdate'}
  use "windwp/nvim-autopairs"
  use "neovim/nvim-lspconfig"
  use { "williamboman/mason.nvim", config= true}
  use "williamboman/mason-lspconfig.nvim"
  use 'j-hui/fidget.nvim'
  use 'folke/neodev.nvim'

  use "hrsh7th/nvim-cmp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "rafamadriz/friendly-snippets"

  use 'lewis6991/gitsigns.nvim'

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

   
    
