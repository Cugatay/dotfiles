local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- Test this
  lsp_zero.buffer_autoformat()

  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>n", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>r", function() vim.diagnostic.goto_prev() end, opts)

  -----------------------------------
  vim.keymap.set("n", "<leader>f", function()
    vim.diagnostic.open_float()
    vim.diagnostic.open_float()
  end, opts)
  vim.keymap.set("n", "<leader>ar", function() vim.lsp.buf.references() end, opts)
  -----------------------------------

  -- vim.keymap.set("n", "<leader>ww", function() vim.lsp.buf.workspace_symbol() end, opts)
  -- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

  -- NOTE: I'm using rename and code actions in lspui
  -- vim.keymap.set("n", "gr", function() vim.lsp.buf.rename() end, opts)

  -- To enter opened error
  -- map <space>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>
end)

lsp_zero.set_sign_icons({
  error = '',
  warn = '',
  hint = '',
  info = ''
})

vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  update_in_insert = true,
  float = {
    -- focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
