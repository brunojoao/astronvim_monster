return {
    "nvim-pack/nvim-spectre",
    lazy = false,
    config = function()
        require('spectre').setup({
            default = {
                replace = {
                    cmd = "sed"
                }
            }
        })
    end
}
