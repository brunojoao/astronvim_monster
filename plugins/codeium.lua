return {
    "Exafunction/codeium.nvim",
    lazy = false,
    dependencies = {"nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp"},
    config = function()
        local lspkind = require "lspkind"
        require("codeium").setup {
            formatting = {
                format = lspkind.cmp_format {
                    mode = "symbol",
                    maxwidth = 150,
                    ellipsis_char = "...",
                    symbol_map = {Codeium = ""}
                }
            }
        }
    end
}
