local chadtree_settings = {
    options = {
        follow = true,
        lang = "null"
    },
    view = {
        width= 30,
        window_options = {
            cursorline = true,
            number = true,
            relativenumber = true,
            signcolumn = "no" ,
            winfixwidth = true,
            wrap = false
        }
    }
}

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>CHADopen<CR>', {})
