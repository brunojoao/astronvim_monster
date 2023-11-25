return {
  {
    "Exafunction/codeium.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" },
    config = function()
      local lspkind = require "lspkind"
      local cmp = require "cmp"
      require("codeium").setup {
        cmp.setup {
          -- ...
          sources = {
            -- ...
            { name = "codeium" },
          },
        },
        formatting = {
          format = lspkind.cmp_format {
            mode = "symbol",
            maxwidth = 50,
            ellipsis_char = "...",
            symbol_map = { Codeium = "" },
          },
        },
      }
    end,
  },
}
