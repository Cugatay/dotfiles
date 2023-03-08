require("persistence").setup()

local group_enter = vim.api.nvim_create_augroup("SessionLoad", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("persistence").load()
  end,
  group = group_enter
})
