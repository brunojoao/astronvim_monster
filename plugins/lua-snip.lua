return {
    "L3MON4D3/LuaSnip",
    lazy = false,
    config = function(plugin, opts)
        -- include the default astronvim config that calls the setup call
        require "plugins.configs.luasnip"(plugin, opts)
        -- load snippets paths
        require("luasnip.loaders.from_vscode").lazy_load {
            -- this can be used if your configuration lives in ~/.config/nvim
            -- if your configuration lives in ~/.config/astronvim, the full path
            -- must be specified in the next line
            paths = {"./lua/user/snippets"}
        }

        local ls = require "luasnip";

        vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end,
                       {silent = true})
        vim.keymap.set({"i", "s"}, "<C-S-right>", function() ls.jump(1) end,
                       {silent = true})
        vim.keymap.set({"i", "s"}, "<C-S-left>", function() ls.jump(-1) end,
                       {silent = true})

        vim.keymap.set({"i", "s"}, "<C-E>", function()
            if ls.choice_active() then ls.change_choice(1) end
        end, {silent = true})
    end
}
