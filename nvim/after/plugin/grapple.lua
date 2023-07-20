local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>j', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>k', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>l', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>;', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>h', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>s', '<Cmd>BufferPin<CR>', opts)

-- Buffer pick modu çok iyiymiş, beğendim. Onunla birleştirerek belki bişeyler başarabiliriz

-- local grapple = require('grapple')
--
-- vim.keymap.set('n', '<leader>e', function()
--   grapple.popup_tags()
-- end)
--
-- vim.keymap.set('n', '<leader>s', function()
--   grapple.tag()
-- end)
--
-- vim.keymap.set('n', '<leader>j', function()
--   grapple.select({ key = 1 })
-- end)
--
-- vim.keymap.set('n', '<leader>k', function()
--   grapple.select({ key = 2 })
-- end)
--
-- vim.keymap.set('n', '<leader>l', function()
--   grapple.select({ key = 3 })
-- end)
--
-- vim.keymap.set('n', '<leader>;', function()
--   grapple.select({ key = 4 })
-- end)
--
-- vim.keymap.set('n', '<leader>h', function()
--   grapple.select({ key = 5 })
-- end)
