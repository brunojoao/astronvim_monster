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
        -- ... outros atalhos ...
        ["<leader>M"] = {
            "<cmd>:Telescope bookmarks list<cr>",
            desc = "Telescope bookmarks"
        },
        ["<leader>H"] = {"<cmd>:checkhealth<cr>", desc = "Health"},
        ["<leader>L"] = {"<cmd>:IBLToggle<cr>", desc = "IBLToggle"},
        ["<leader>fM"] = {
            "<cmd>Telescope bookmarks list<cr>",
            desc = "Marks List"
        }
    }
}
