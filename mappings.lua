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
        ["<A-j>"] = {'<cmd>:MoveLine(1)<cr>', desc = ""},
        ["<A-k>"] = {'<cmd>:MoveLine(-1)<cr>', desc = ""},
        ["<A-h>"] = {'<cmd>:MoveHChar(-1)<cr>', desc = ""},
        ["<A-l>"] = {'<cmd>:MoveHChar(1)<cr>', desc = ""},
        ["<leader>Wf"] = {'<cmd>:MoveWord(1)<cr>', desc = "MoveWord +1"},
        ["<leader>Wb"] = {'<cmd>:MoveWord(-1)<cr>', desc = "MoveWord -1"}
    },
    v = {
        ["<A-j>"] = {'<cmd>:MoveBlock(1)<cr>', desc = ""},
        ["<A-k>"] = {'<cmd>:MoveBlock(-1)<cr>', desc = ""},
        ["<A-h>"] = {'<cmd>:MoveHBlock(-1)<cr>', desc = ""},
        ["<A-l>"] = {'<cmd>:MoveHBlock(1)<cr>', desc = ""}
    }
}
