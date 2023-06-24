return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function ()
        require("telescope").setup {
            extensions = {
                file_browser = {
                    theme = "ivy",
                    -- disables netrw and use telescope-file-browser in its place
                    hijack_netrw = true,
                    mappings = {
                        ["i"] = {
                            -- your custom insert mode mappings
                        },
                        ["n"] = {
                            -- your custom normal mode mappings
                        },
                    },
                },
            },

        }
        require("telescope").load_extension('projects')
        require("telescope").load_extension('file_browser')
    end
}
