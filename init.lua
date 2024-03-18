return {
    lsp = {
        formatting = {
            format_on_save = true, -- enable or disable automatic formatting on save
            timeout_ms = 50000
        }
    },
    plugins = {
        {
            "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
            {
                "williamboman/mason-lspconfig.nvim",
                opts = {
                    ensure_installed = {"tsserver"} -- automatically install lsp
                }
            }
        }
    }
}
