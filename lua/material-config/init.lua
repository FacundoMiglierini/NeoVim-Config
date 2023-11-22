require('material').setup({

    contrast = {
        terminal = true,
        sidebars = false,
        floating_windows = false,
        non_current_windows = false, 
    },

    plugins = {
        "lspsaga",
        "nvim-cmp",
        "nvim-tree",
        "nvim-web-devicons",
        "telescope",
        "which-key",
    },

    high_visibility = {
        darker = true,
    }
})
