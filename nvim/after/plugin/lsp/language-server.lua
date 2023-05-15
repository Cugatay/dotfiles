local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>n", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>p", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.rename() end, opts)
  -- To enter opened error
  -- map <space>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>
end

local lspconfig = require('lspconfig')

require('mason-lspconfig').setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = lsp_attach,
      capabilities = lsp_capabilities,
    })
  end,
})

lspconfig.denols.setup {
  root_dir = lspconfig.util.root_pattern("deno.json"),
  single_file_support = false,
  on_attach = lsp_attach,
  capabilities = lsp_capabilities,
}

lspconfig.tsserver.setup {
  root_dir = lspconfig.util.root_pattern("package.json"),
  single_file_support = false,
  on_attach = lsp_attach,
  capabilities = lsp_capabilities,
}

-- lspconfig.tailwindcss.setup({
--   root_dir = lspconfig.util.root_pattern("tailwind.config.*"),
--   single_file_support = false,
--   on_attach = lsp_attach,
--   capabilities = lsp_capabilities,
-- })


-- lspconfig.tailwindcss.setup({
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
-- })
