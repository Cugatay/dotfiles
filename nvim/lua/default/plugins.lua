local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- TODO: add a keymap for :0GlLog or :0Gllog -------------------- IMPORTANT by the way haha

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim' -- Common utulities

  -- Editor Style
  use 'folke/tokyonight.nvim'                                  -- Theme
  use 'nvim-lualine/lualine.nvim'                              -- Statusline
  use 'kyazdani42/nvim-web-devicons'                           -- File icons
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Highlights
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use 'akinsho/nvim-bufferline.lua'                          -- Bufferline
  -- ----------------------------------------------------------

  -- Language Server
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason.nvim" -- Language servers
  use 'williamboman/mason-lspconfig.nvim'
  -- use 'Cugatay/nvim-cmp'                -- Real version: hrsh7th/nvim-cmp, yioneko's: yioneko/nvim-cmp
  -- use 'yioneko/nvim-cmp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use "L3MON4D3/LuaSnip"                -- Snippet engine requirement
  use 'hrsh7th/cmp-buffer'              -- Buffer source for cmp
  use 'saadparwaiz1/cmp_luasnip'        -- Snippet source
  use 'rafamadriz/friendly-snippets'    -- Pre-configured vscode-like snippets
  use 'onsails/lspkind.nvim'            -- VSCode-like Pictograms
  use 'jose-elias-alvarez/null-ls.nvim' -- Formatter
  use { 'j-hui/fidget.nvim' }           -- LSP Updates UI
  -- use { "jinzhongjia/LspUI.nvim", branch = 'legacy' } -- Better UI
  use { "jinzhongjia/LspUI.nvim" }      -- Better UI
  -- use { 'folke/trouble.nvim','legacy'  config = function()
  --   require("trouble").setup()
  -- end }
  -- use { 'simrat39/inlay-hints.nvim', config = function()
  --   require("inlay-hints").setup()
  -- end } -- Satır içinde hint vermek için
  -- ----------------------------------------------------------

  -- Must be coding features
  use 'windwp/nvim-autopairs'                       -- Auto pair ' { ( [ etc.
  use 'windwp/nvim-ts-autotag'                      -- Automatically close ts tags -- TODO
  use 'leafOfTree/vim-matchtag'                     -- Match and highlight tags (In vimscript)
  use 'numToStr/Comment.nvim'                       -- Toggle Comment out
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Comment out tsx
  use 'norcalli/nvim-colorizer.lua'                 -- Colorize rgb and hex codes
  -- use 'rmagatti/auto-session'                       -- Save sessions automatically
  use 'kazhala/close-buffers.nvim'                  -- Close buffers without closing split screens
  -- use 'ggandor/leap.nvim'                           -- Nvim's mouse answer
  -- use 'folke/flash.nvim'
  -- use 'mbbill/undotree'                             -- Undotree
  use 'cbochs/grapple.nvim' -- File Workflow
  use 'github/copilot.vim'

  -- use { 'RishabhRD/nvim-cheat.sh', requires = { 'RishabhRD/popfix' } }


  -- use { 'mg979/vim-visual-multi', branch = 'master' } -- Multi cursor
  -- ---------------------------------------------------------

  -- Search globally
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- use {
  --   'prochri/telescope-all-recent.nvim',
  --   config = function()
  --     require 'telescope-all-recent'.setup {
  --       -- your config goes here
  --     }
  --   end,
  --   requires = { 'kkharji/sqlite.lua' }
  -- }

  -- use 'stevearc/oil.nvim'
  -- ---------------------------------------------------------

  -- Git plugins
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'
  -- use "sindrets/diffview.nvim" -- VSCode-like diffview
  -- use { 'NeogitOrg/neogit', config = function()
  --   require('neogit').setup {}
  -- end }
  -- use 'f-person/git-blame.nvim'
  -- use "numToStr/FTerm.nvim" -- This is a floating term plugin, but I'm using it for opening LazyGit
  -- ---------------------------------------------------------

  -- Language Plugins
  -- use 'wuelnerdotexe/vim-astro'
  -- use 'simrat39/rust-tools.nvim'

  -- use 'echasnovski/mini.nvim'
  -- use { 'echasnovski/mini.nvim', config = function()
  --   require('mini.animate').setup()
  -- end }

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  -- ---------------------------------------------------------
end)
