return {
  "tomasky/bookmarks.nvim",
  lazy = false,
  config = function()
    require("bookmarks").setup {
      sign_priority = 50, --set bookmark sign priority to cover other sign
      save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
      keywords = {
        ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
        ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
        ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
        ["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
      },
      on_attach = function(bufnr)
        local bm = require "bookmarks"
        local map = vim.keymap.set
        map("n", "mm", bm.bookmark_toggle, { desc = "bookmark toggle" }) -- add or remove bookmark at current line
        map("n", "mi", bm.bookmark_ann, { desc = "bookmark edit" }) -- add or edit mark annotation at current line
        map("n", "mc", bm.bookmark_clean, { desc = "bookmark clean" }) -- clean all marks in local buffer
        map("n", "mn", bm.bookmark_next, { desc = "next" }) -- jump to next mark in local buffer
        map("n", "mp", bm.bookmark_prev, { desc = "prev" }) -- jump to previous mark in local buffer
        map("n", "ml", bm.bookmark_list, { desc = "list" }) -- show marked file list in quickfix window
      end,
    }
    require("telescope").load_extension "bookmarks"
  end,
}
