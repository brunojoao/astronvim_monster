return {
    n = {
        ["<leader>fS"] = {"<cmd>Spectre<cr>", desc = "Spectre Patronum!"},
        ["<leader>gB"] = {"<cmd>GitBlameToggle<cr>", desc = "Blame Toggle"},
        ["<leader>a"] = {desc = "Artificial intelligence"},
        ["<leader>ac"] = {"<cmd>Codeium Auth<cr>", desc = "Codeium Auth"},
        ["<leader>G"] = {desc = "GitBlame"},
        ["<leader>Gt"] = {"<cmd>GitBlameToggle<cr>", desc = "Blame Toggle"},
        ["<leader>Gc"] = {
            "<cmd>GitBlameOpenCommitURL<cr>",
            desc = "Blame open commit"
        },
        ["<leader>Gf"] = {
            "<cmd>GitBlameOpenFileURL<cr>",
            desc = "Blame open file"
        },
        ["<leader>F"] = {desc = "Format Prettier"},
        ["<leader>Ff"] = {
            "<cmd>:!npx prettier --write --parser html %<cr>",
            desc = ".edge force"
        },
        ["<leader>m"] = {desc = "Marks"},
        ["<leader>mD"] = {"<cmd>:delmarks!<cr>", desc = "Remove All marks"},
        ["<leader>ml"] = {"<cmd>:marks<cr>", desc = "List marks"}
    }
}
