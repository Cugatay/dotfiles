local lualine = require('lualine')

lualine.setup {
  options = {
    theme = 'tokyonight',
    section_separators = { left = '', right = '' },
    -- theme = 'catppuccin',
    -- theme = 'ayu_mirage',
  },
  sections = {
    -- lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {
      { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      -- 'encoding',
      'filetype'
    },
    -- lualine_y = {},
    lualine_z = {}
  },
}
