local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugs.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Packer not loaded!");
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Load plugins
  -- Packer
  use 'wbthomason/packer.nvim'
  -- some useful lua functions
  use 'nvim-lua/plenary.nvim' 
  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Statusline
  use 'nvim-lualine/lualine.nvim'
  -- Colorschemes
  -- Nightfox colorscheme
  use 'EdenEast/nightfox.nvim'
  -- Autopairs
  use 'windwp/nvim-autopairs'
  -- Tree
  use 'kyazdani42/nvim-tree.lua'
  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  -- use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  -- Telescope
  use "nvim-telescope/telescope.nvim"
  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"
  -- Git
  use "lewis6991/gitsigns.nvim"
    -- Markdown-Preview
  use({ "iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end, })
  use "ixru/nvim-markdown"
  -- Which-Key
  use "folke/which-key.nvim"
  -- LSP
  use 'neovim/nvim-lspconfig'
  -- Todo Comments
  use "folke/todo-comments.nvim"
  -- MultiCursor TODO: Try to unterstand the usage
  -- use "mg979/vim-visual-multi"
  -- ZK
   use "mickael-menu/zk-nvim"
  -- Zen Mode + Twilight
  use "folke/zen-mode.nvim"
  use "folke/twilight.nvim"
  -- Show HTML colors
  use "norcalli/nvim-colorizer.lua"
  pcall(require, "colorizer")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
