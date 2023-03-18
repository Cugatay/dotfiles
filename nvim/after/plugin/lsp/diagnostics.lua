-- Set icons for warnings and errors
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--   underline = true,
--   update_in_insert = false,
--   virtual_text = { spacing = 4, prefix = "●" },
--   severity_sort = true,
-- }
-- )

------------------------------------------------------
-- vim.diagnostic.config({
--   virtual_text = {
--     prefix = '●'
--   },
--   update_in_insert = true,
--   float = {
--     source = "always", -- Or "if_many"
--   },
-- })

vim.diagnostic.config({
  virtual_text = {
    -- source = "always", -- Or "if_many"
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
