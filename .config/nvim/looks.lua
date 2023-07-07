vim.opt.syntax = 'on'

vim.cmd('highlight clear LineNr')
vim.cmd('highlight clear CursorLineNr')
vim.cmd('highlight clear SignColumn')
vim.cmd('highlight clear StatusLine')

vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE')
vim.cmd('highlight CursorLineNr gui=bold guifg=#ff8f40')
vim.cmd('highlight EndOfBuffer ctermbg=NONE')

vim.cmd('set cursorline')
vim.cmd('set culopt=number')

-- Everforest
vim.cmd([[
    " Important!!
    if has('termguicolors')
    set termguicolors
    endif

    " For dark version.
    set background=dark

    " For light version.
    set background=light

    " Set contrast.
    " This configuration option should be placed before `colorscheme everforest`.
    " Available values: 'hard', 'medium'(default), 'soft'
    let g:everforest_background = 'soft'

    " For better performance
    let g:everforest_better_performance     = 1
    let g:everforest_transparent_background = 1
    let g:everforest_enable_italic          = 1


    colorscheme everforest

]])

