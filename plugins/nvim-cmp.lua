return {
  "hrsh7th/nvim-cmp",
  opt = true,
  config = function()
    local cmp = require "cmp"
    cmp.setup {
      sources = {
        { name = "codeium" },
      },
      formatting = {
        format = require("lspkind").cmp_format {
          mode = "symbol",
          maxwidth = 50,
          ellipsis_char = "...",
          symbol_map = { Codeium = "" },
        },
      },
    }
  end,
}
