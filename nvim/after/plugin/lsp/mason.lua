local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'rust_analyzer',
    'tsserver',
    -- 'denols',
    'lua_ls',
    'cssls',
    'cssmodules_ls',
    'eslint',
    'jsonls',
    -- 'prettierd',
    'tailwindcss',
    'taplo'
  },
  handlers = {
    lsp_zero.default_setup,

    rust_analyzer = function()
      lspconfig.rust_analyzer.setup({
        on_attach = lsp_zero.on_attach,
        capabilities = lsp_capabilities,
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              command = "clippy",
            },
          },
        },
      })
    end,
    lua_ls = function()
      lspconfig.lua_ls.setup({
        on_attach = lsp_zero.on_attach,
        capabilities = lsp_capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      })
    end,
    tsserver = function()
      lspconfig.tsserver.setup({
        on_attach = lsp_zero.on_attach,
        capabilities = lsp_capabilities,
        root_dir = lspconfig.util.root_pattern("package.json"),
        single_file_support = false,
      })
    end
  },

  -- gdscript = {
  --   -- on_attach = lsp_attach,
  --   -- flags = {
  --   --   debounce_text_changes = 150,
  --   -- }
  -- }
  -- denols = {
  --   root_dir = lspconfig.util.root_pattern("deno.json"),
  --   single_file_support = false,
  --   capabilities = lsp_capabilities,
  -- },
  -- tailwindcss = {
  --   settings = {
  --     tailwindCSS = {
  --       experimental = {
  --         classRegex = {
  --           ["cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]"],
  --           ["cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)"],
  --         },
  --       },
  --     },
  --   },
  -- },
  -- tailwindcss= {
  --   root_dir = lspconfig.util.root_pattern("tailwind.config.*"),
  --   single_file_support = false,
  --   capabilities = lsp_capabilities,
  -- },
  -- tailwindcss = {
  -- filetypes = {
  --   "aspnetcorerazor", "astro", "astro-markdown", "blade", "django-html", "htmldjango", "edge", "eelixir", "elixir",
  --   "ejs", "erb", "eruby", "gohtml", "haml", "handlebars", "hbs", "html", "html-eex", "heex", "jade", "leaf", "liquid",
  --   "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass",
  --   "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact",
  --   "vue", "svelte",
  --   "rust"
  -- },
  -- init_options = {
  --   userLanguages = {
  --     rust = "html",
  --   },
  -- },
  -- }
})
