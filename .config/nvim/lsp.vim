" nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gk <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> gh <cmd>lua vim.diagnostic.hide()<CR>
" nnoremap <silent> gs <cmd>lua vim.diagnostic.show()<CR>
" nnoremap <silent> <C-p> <cmd>lua vim.diagnostic.goto_prev()<CR>
" nnoremap <silent> <C-n> <cmd>lua vim.diagnostic.goto_next()<CR>

" autocmd BufWritePre *.vue lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufNewFile,BufRead *.vue setfiletype vue
" autocmd BufWritePre *.vue lua vim.lsp.buf.formatting_sync()
" autocmd BufWritePre *.vue lua vim.lsp.buf.formatting_sync()
" autocmd BufWritePre *.scss lua vim.lsp.buf.formatting_sync()
