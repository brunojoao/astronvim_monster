return {
    "nvim-pack/nvim-spectre",
    lazy = false,
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function() require("spectre").setup() end
}
