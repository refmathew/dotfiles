" move highlighted text vertically
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" copy to clipboard
vnoremap <leader>y "+y
" paste from clipboard
vnoremap <leader>p <CR>"+p

" nnoremap <leader>f :FZF<CR>
nnoremap <leader>w :w<CR>

nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
