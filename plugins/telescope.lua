return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    config = function()
        local telescope = require "telescope"
        telescope.setup {
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
                    "--glob=!**/node_modules/*", "--glob=!**/writable/*",
                    "--glob=!**/storage/*", "--glob=!**/composer-lock.json",
                    "--glob=!**/jquery-ui.js"
                }
            },
            pickers = {
                find_files = {
                    hidden = true,
                    -- needed to exclude some files & dirs from general search
                    -- when not included or specified in .gitignore
                    find_command = {
                        "rg", "--files", "--hidden", "--glob=!**/.git/*",
                        "--glob=!**/.idea/*", "--glob=!**/.vscode/*",
                        "--glob=!**/build/*", "--glob=!**/dist/*",
                        "--glob=!**/yarn.lock", "--glob=!**/package-lock.json",
                        "--glob=!**/composer-lock.json", "--glob=!**/vendor/*",
                        "--glob=!**/storage/*", "--glob=!**/node_modules/*",
                        "--glob=!**/jquery-ui.js"
                    }
                }
            }
        }
    end
}
