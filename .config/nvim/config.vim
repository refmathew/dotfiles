set expandtab
set hidden
set incsearch
set nohls
set nowrap
set nu rnu
set shiftwidth=2
set smartindent
set splitright
set tabstop=2 softtabstop=2
set termguicolors
set wildmenu
syntax on



" removes trailing characters
" autocmd BufWritePre * :%s/\s\+$//e

" change pwd
if executable('rg')
    let g:rg_derive_root='true'
endif

" save code folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview
autocmd BufWritePre * lua vim.lsp.buf.format()
