-- require('flash').setup({
--   highlight = {
--     -- show a backdrop with hl FlashBackdrop
--     backdrop = true,
--     -- Highlight the search matches
--     matches = true,
--     -- extmark priority
--     priority = 5000,
--     groups = {
--       match = "FlashMatch",
--       current = "FlashCurrent",
--       backdrop = "FlashBackdrop",
--       label = "FlashLabel",
--     },
--   },
-- })
--
-- -- { "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
-- -- { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
-- -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
-- -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
-- -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
-- -- Turn these keys below to real keys with vim.keymap
--
-- vim.keymap.set('n', 's', function()
--   require("flash").jump({
--     search = { forward = true, wrap = false, multi_window = false },
--   })
-- end, { noremap = true, silent = true })
--
-- vim.keymap.set('n', 'S', function()
--   require("flash").jump({
--     search = { forward = false, wrap = false, multi_window = false },
--   })
-- end, { noremap = true, silent = true })
