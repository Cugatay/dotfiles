local grapple = require('grapple')

vim.keymap.set('n', '<leader>e', function()
  grapple.popup_tags()
end)

vim.keymap.set('n', '<leader>s', function()
  grapple.tag()
end)

vim.keymap.set('n', '<leader>j', function()
  -- grp.select({ key = '1' })
  vim.cmd("GrappleSelect key=1")
end)

vim.keymap.set('n', '<leader>k', function()
  -- grp.select({ key = '2' })
  vim.cmd("GrappleSelect key=2")
end)

vim.keymap.set('n', '<leader>l', function()
  -- grp.select({ key = '3' })
  vim.cmd("GrappleSelect key=3")
end)

vim.keymap.set('n', '<leader>;', function()
  -- grp.select({ key = '4' })
  vim.cmd("GrappleSelect key=4")
end)

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
