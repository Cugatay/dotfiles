local ts = require('nvim-treesitter.configs')

ts.setup {
  ensure_installed = { "lua", "vim", "help", "javascript", "typescript", "rust", "go", "markdown", "markdown_inline" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    disable = function(lang, bufnr) -- Disable in large C++ buffers
      return vim.api.nvim_buf_line_count(bufnr) > 50000
    end,

    additional_vim_regex_highlighting = false,
  },

  autotag = {
    enable = true,
  }
}
