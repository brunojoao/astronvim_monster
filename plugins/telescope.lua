return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    opt = true,
    config = function()
        opts = function()
            local actions = require "telescope.actions"
            local get_icon = require("astronvim.utils").get_icon
            return {
                defaults = {
                    file_ignore_patterns = {
                        "node_modules", "build", "dist", "yarn.lock", ".git",
                        "vendor"
                    },
                    -- configure to use ripgrep
                    vimgrep_arguments = {
                        "rg", "--follow", -- Follow symbolic links
                        "--hidden", -- Search for hidden files
                        "--no-heading", -- Don't group matches by each file
                        "--with-filename", -- Print the file path with the matched lines
                        "--line-number", -- Show line numbers
                        "--column", -- Show column numbers
                        "--smart-case", -- Smart case search
                        -- Exclude some patterns from search
                        "--glob=!**/.git/*", "--glob=!**/.idea/*",
                        "--glob=!**/.vscode/*", "--glob=!**/build/*",
                        "--glob=!**/dist/*", "--glob=!**/yarn.lock",
                        "--glob=!**/package-lock.json", "--glob=!**/vendor/*",
                        "--glob=!**/node_modules/*",
                        "--glob=!**/composer-lock.json"
                    },

                    pickers = {
                        find_files = {
                            hidden = true,
                            -- needed to exclude some files & dirs from general search
                            -- when not included or specified in .gitignore
                            find_command = {
                                "rg", "--files", "--hidden",
                                "--glob=!**/.git/*", "--glob=!**/.idea/*",
                                "--glob=!**/.vscode/*", "--glob=!**/build/*",
                                "--glob=!**/dist/*", "--glob=!**/yarn.lock",
                                "--glob=!**/package-lock.json",
                                "--glob=!**/composer-lock.json",
                                "--glob=!**/vendor/*",
                                "--glob=!**/node_modules/*"
                            }
                        }
                    },
                    git_worktrees = vim.g.git_worktrees,
                    prompt_prefix = string.format("%s ", get_icon "Search"),
                    selection_caret = string.format("%s ", get_icon "Selected"),
                    path_display = {"truncate"},
                    sorting_strategy = "ascending",
                    layout_config = {
                        horizontal = {
                            prompt_position = "top",
                            preview_width = 0.55
                        },
                        vertical = {mirror = false},
                        width = 0.87,
                        height = 0.80,
                        preview_cutoff = 120
                    },

                    mappings = {
                        i = {
                            ["<C-n>"] = actions.cycle_history_next,
                            ["<C-p>"] = actions.cycle_history_prev,
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous
                        },
                        n = {["q"] = actions.close}
                    }
                }
            }
        end
    end
}
