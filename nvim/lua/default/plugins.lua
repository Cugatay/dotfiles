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
  use 'folke/tokyonight.nvim'                                   -- Theme
  use 'nvim-lualine/lualine.nvim'                               -- Statusline
  use 'kyazdani42/nvim-web-devicons'                            -- File icons
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- Highlights
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use 'akinsho/nvim-bufferline.lua'                          -- Bufferline

  -- ----------------------------------------------------------

  -- Language Server
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason.nvim" -- Language servers
  use 'williamboman/mason-lspconfig.nvim'
  -- use 'Cugatay/nvim-cmp'                -- Real version: hrsh7th/nvim-cmp, yioneko's: yioneko/nvim-cmp
  use 'yioneko/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'                  -- nvim-cmp source for neovim's built-in LSP
  use "L3MON4D3/LuaSnip"                      -- Snippet engine requirement
  use 'hrsh7th/cmp-buffer'                    -- Buffer source for cmp
  use 'saadparwaiz1/cmp_luasnip'              -- Snippet source
  use 'rafamadriz/friendly-snippets'          -- Pre-configured vscode-like snippets
  use 'onsails/lspkind.nvim'                  -- VSCode-like Pictograms
  use 'jose-elias-alvarez/null-ls.nvim'       -- Formatter
  use { 'j-hui/fidget.nvim', tag = 'legacy' } -- LSP Updates UI
  use "jinzhongjia/LspUI.nvim"                -- Better UI
  -- use { 'folke/trouble.nvim', config = function()
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
  use 'ggandor/leap.nvim'                           -- Nvim's mouse answer
  -- use 'mbbill/undotree'                             -- Undotree
  use 'cbochs/grapple.nvim'                         -- File Workflow
  use 'romgrk/barbar.nvim'
  -- use { 'mg979/vim-visual-multi', branch = 'master' } -- Multi cursor
  -- ---------------------------------------------------------

  -- Search globally
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- use 'stevearc/oil.nvim'
  -- ---------------------------------------------------------

  -- Git plugins
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'     -- It's in VimScript :(
  use "sindrets/diffview.nvim" -- VSCode-like diffview
  -- use 'f-person/git-blame.nvim'
  -- use "numToStr/FTerm.nvim" -- This is a floating term plugin, but I'm using it for opening LazyGit
  -- ---------------------------------------------------------

  -- Language Plugins
  -- use 'wuelnerdotexe/vim-astro'
  -- use 'simrat39/rust-tools.nvim'
  -- ---------------------------------------------------------
end)
