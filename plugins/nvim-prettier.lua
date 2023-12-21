return {
    "MunifTanjim/prettier.nvim",
    lazy = false,
    config = function()
        local prettier = require "prettier"
        prettier.setup {
            bin = "prettierd", -- or `'prettierd'` (v0.23.3+)
            filetypes = {
                "edge", "css", "graphql", "html", "javascript",
                "javascriptreact", "json", "less", "markdown", "scss",
                "typescript", "typescriptreact", "yaml"
            },
            cli_options = {
                embedded_language_formatting = "auto",
                end_of_line = "lf",
                html_whitespace_sensitivity = "css",
                print_width = 800,
                semi = true,
                tab_width = 2,
                trailing_comma = "es5",
                vue_indent_script_and_style = false
            }
        }
    end
}
