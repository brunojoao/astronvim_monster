return {
  "echasnovski/mini.surround",
  lazy = false,
  config = function()
    local mini_surround = require "mini.surround"
    mini_surround.setup {
      custom_surroundings = nil,

      highlight_duration = 500,

      mappings = {
        add = "sa", -- Add surrounding in Normal and Visual modes / não sei como, mas funciona assim -> saiw"
        delete = "sd", -- Delete surrounding
        find = "sf", -- Find surrounding (to the right)
        find_left = "sF", -- Find surrounding (to the left)
        highlight = "sh", -- Highlight surrounding
        replace = "sr", -- Replace surrounding
        update_n_lines = "sn", -- Update `n_lines`

        suffix_last = "l", -- Suffix to search with "prev" method
        suffix_next = "n", -- Suffix to search with "next" method
      },

      n_lines = 20,

      respect_selection_type = false,

      -- see `:h MiniSurround.config`.
      search_method = "cover",

      silent = false,
    }
  end,
}
