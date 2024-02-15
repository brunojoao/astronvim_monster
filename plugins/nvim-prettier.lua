return {
    "MunifTanjim/prettier.nvim",
    lazy = false,
    config = function()
        local prettier = require "prettier"
        prettier.setup {
            bin = "prettier", -- or `'prettierd'` (v0.23.3+)
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
                vue_indent_script_and_style = false,
                config_precedence = "prefer-file"
            }
        }

        local null_ls = require("null-ls")
        local group = vim.api.nvim_create_augroup("lsp_format_on_save",
                                                  {clear = false})
        local event = "BufWritePre" -- or "BufWritePost"
        local async = event == "BufWritePost"

        null_ls.setup({
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.keymap.set("n", "<Leader>f", function()
                        vim.lsp.buf
                            .format({bufnr = vim.api.nvim_get_current_buf()})
                    end, {buffer = bufnr, desc = "[lsp] format"})

                    -- format on save
                    vim.api.nvim_clear_autocmds({buffer = bufnr, group = group})
                    vim.api.nvim_create_autocmd(event, {
                        buffer = bufnr,
                        group = group,
                        callback = function()
                            vim.lsp.buf.format({bufnr = bufnr, async = async})
                        end,
                        desc = "[lsp] format on save"
                    })
                end

                if client.supports_method("textDocument/rangeFormatting") then
                    vim.keymap.set("x", "<Leader>f", function()
                        vim.lsp.buf
                            .format({bufnr = vim.api.nvim_get_current_buf()})
                    end, {buffer = bufnr, desc = "[lsp] format"})
                end
            end
        })
        require'lspconfig'.tsserver.setup {}
    end
}
