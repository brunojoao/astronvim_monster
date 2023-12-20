return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
        local function show_macro_recording()
            local recording_register = vim.fn.reg_recording()
            if recording_register == "" then
                return ""
            else
                return "Recording @" .. recording_register
            end
        end
        require("lualine").setup {
            options = {
                icons_enabled = true,
                theme = "horizon",
                component_separators = {left = "", right = ""},
                section_separators = {left = "", right = ""},
                disabled_filetypes = {statusline = {}, winbar = {}},
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {statusline = 1000, tabline = 1000, winbar = 1000}
            },
            sections = {
                lualine_a = {"mode"},
                lualine_b = {
                    "branch", "diff", "diagnostics",
                    {"macro-recording", fmt = show_macro_recording}
                },
                lualine_c = {"searchcount", "selectioncount"},
                lualine_x = {"encoding", "fileformat", "filetype"},
                lualine_y = {"progress"},
                lualine_z = {"location"}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {"branch"},
                lualine_c = {"filename"},
                lualine_x = {"location"},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}
