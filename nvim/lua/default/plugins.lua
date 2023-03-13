local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- TODO: Add:
-- mg979/vim-visual-multi

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim' -- Common utulities

  -- Editor Style
  use 'folke/tokyonight.nvim' -- Theme
  -- use { "catppuccin/nvim", as = "catppuccin" }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'akinsho/nvim-bufferline.lua' -- Bufferline
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- Highlights
  -- ----------------------------------------------------------

  -- Language Server
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason.nvim" -- Language servers
  use 'williamboman/mason-lspconfig.nvim'
  -- use 'hrsh7th/nvim-cmp' -- This is the actual version, but it was slow with TailwindCSS. If it's still slow, use this instead: yioneko/nvim-cmp
  use 'yioneko/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use "L3MON4D3/LuaSnip" -- Snippet engine requirement
  use 'jose-elias-alvarez/null-ls.nvim' -- Formatter
  use 'hrsh7th/cmp-buffer' -- Buffer course for intellisense
  use 'j-hui/fidget.nvim' -- LSP Updates UI
  -- ----------------------------------------------------------

  -- Must be coding features
  use 'windwp/nvim-autopairs' -- Auto pair ' { ( [ etc.
  use 'windwp/nvim-ts-autotag' -- Automatically close ts tags -- TODO
  use 'leafOfTree/vim-matchtag' -- Match and highlight tags (In vimscript)
  use 'numToStr/Comment.nvim' -- Toggle Comment out
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Comment out tsx
  use 'norcalli/nvim-colorizer.lua' -- Colorize rgb and hex codes
  use 'rmagatti/auto-session'
  -- ---------------------------------------------------------

  -- Search globally
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- ---------------------------------------------------------

  -- Git plugins
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive' -- It's in VimScript :(
  use "numToStr/FTerm.nvim" -- This is a floating term plugin, but I'm using it for opening LazyGit
  -- ---------------------------------------------------------

  -- Language Plugins
  use 'wuelnerdotexe/vim-astro'
  -- use 'simrat39/rust-tools.nvim'
  -- ---------------------------------------------------------
end)
