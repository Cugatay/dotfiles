vim.keymap.set('n', '<leader>co', ':ChatGPT<CR>')
vim.keymap.set('v', '<leader>ce', '<ESC>:ChatGPTEditWithInstructions<CR>')
vim.keymap.set('v', '<leader>ct', '<ESC>:ChatGPTRun add_tests<CR>')
vim.keymap.set('v', '<leader>cf', '<ESC>:ChatGPTRun fix_bugs<CR>')
vim.keymap.set('v', '<leader>cx', ':ChatGPTRun explain_code<CR>')

-- vim.keymap.set('n', '<leader>e', function()
require("chatgpt").setup({
  chat = {
    keymaps = {
      -- close = { '<C-c>'},
      close = {},
      yank_last = "<C-y>",
      yank_last_code = "<C-k>",
      scroll_up = "<C-u>",
      scroll_down = "<C-d>",
      new_session = "<C-n>",
      cycle_windows = "<Tab>",
      cycle_modes = "<C-f>",
      select_session = "<Space>",
      rename_session = "r",
      delete_session = "d",
      draft_message = "<C-d>",
      toggle_settings = "<C-o>",
      toggle_message_role = "<C-r>",
      toggle_system_role_open = "<C-s>",
    },
  },
})
