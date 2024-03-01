require("neo-tree").setup({
    close_if_last_window = true,
        window = {
            mappings = {
                ["C"] = "close_all_subnodes",
                ["Z"] = "expand_all_nodes",
        },
    },
    filesystem = {
        follow_current_file = {
            enabled = true,
        },
        hijack_netrw_behavior = "open_current",
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_hidden = false,
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
                '.git',
            },
            never_show = {},
        },
    }

})
