vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


require("nvim-tree").setup({
    respect_buf_cwd = true,
    sort_by = "case_sensitive",
    git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        timeout = 400,
    },
    view = {
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
        indent_markers = {
          enable = true,
          --inline_arrows = true,
        }
    },
    filters = {
    dotfiles = false,
    },
    sync_root_with_cwd = false,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
})
