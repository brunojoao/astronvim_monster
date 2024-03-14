return {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    lazy = false,
    opts = {},
    config = function(_, opts) require'lsp_signature'.setup(opts) end
}
