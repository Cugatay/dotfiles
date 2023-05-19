-- TODO: Review this

local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          -- ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["n"] = fb_actions.create,
          ["r"] = fb_actions.rename,
          ["m"] = fb_actions.rename,
          ["e"] = function()
          end
          -- ["/"] = function()
          --   vim.cmd('startinsert')
          -- end
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<C-p>', function()
  builtin.find_files({
    -- TODO
    no_ignore = false,
    -- file_ignore_patterns = { "!**/.env" },
    hidden = true
  })
end)

vim.keymap.set('n', '<C-f>', function()
  builtin.live_grep()
end)

-- Open buffer list
-- vim.keymap.set('n', '<leader>b', function()
--   builtin.buffers()
-- end)

-- vim.keymap.set("n", "<C-b>", function()
--   telescope.extensions.file_browser.file_browser({
--     path = "%:p:h",
--     cwd = telescope_buffer_dir(),
--     respect_gitignore = false,
--     hidden = true,
--     grouped = true,
--     previewer = false,
--     initial_mode = "normal",
--     layout_config = { height = 40 },
--     git_status = false
--   })
-- end)
