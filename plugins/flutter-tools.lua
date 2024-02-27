return {
    'akinsho/flutter-tools.nvim',
    lazy = true,
    dependencies = {
        'nvim-lua/plenary.nvim', 'stevearc/dressing.nvim' -- optional for vim.ui.select
    },
    config = function()
        require("flutter-tools").setup {} -- use defaults
    end
}
