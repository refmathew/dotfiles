if vim.g.vscode then

else 
    local paths = {
        "plugins.vim",
        "config.vim",
        "config.lua",
        "maps.lua",
        "maps.vim",
        "lsp.lua",
        "lsp.vim",
        "plugins/configs/cmp.lua",
        "plugins/configs/emmet-config.vim",
        "plugins/configs/telescope.lua",
        "plugins/configs/vim-hexokinase.vim",
        "plugins/maps/harpoon.lua",
        "plugins/chadtree.lua",
        "plugins/coq_nvim.lua",
        "plugins/jsdoc.vim",
        "plugins/nerdcommenter.vim",
        "plugins/vim-vue-plugin.vim",
        "plugins/mason.lua",
        "netrw.vim",
        "looks.lua",
    }

    for i = 1, #(paths) do
        vim.cmd("so $HOME/.config/nvim/" .. paths[i])
    end
end
