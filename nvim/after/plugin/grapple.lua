local grapple = require('grapple')

vim.keymap.set('n', '<leader>e', function()
  grapple.popup_tags()
end)

vim.keymap.set('n', '<leader>s', function()
  grapple.tag()
end)

vim.keymap.set('n', '<leader>j', function()
  grapple.select({ key = 1 })
end)

vim.keymap.set('n', '<leader>k', function()
  grapple.select({ key = 2 })
end)

vim.keymap.set('n', '<leader>l', function()
  grapple.select({ key = 3 })
end)

vim.keymap.set('n', '<leader>;', function()
  grapple.select({ key = 4 })
end)

vim.keymap.set('n', '<leader>h', function()
  grapple.select({ key = 5 })
end)
-----------------------------------------------

-- local group_enter = vim.api.nvim_create_augroup("SessionLoad", { clear = true })

-- vim.api.nvim_create_autocmd("VimEnter", {
--   command = "GrappleCycle forward",
-- group = group_enter
-- })

-- vim.keymap.set('n', '<C-h>', function()
--   grp.cycle_backward()
-- end)

-- vim.keymap.set('n', '<C-l>', function()
--   grp.cycle_forward()
-- end)

-- vim.keymap.set('n', '<C-w>', function()
--   grapple.untag()
--   vim.cmd("BD this")
-- end)
