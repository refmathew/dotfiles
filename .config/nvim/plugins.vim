" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File navigation
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'ThePrimeagen/harpoon'
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

    " Themes
    Plug 'ayu-theme/ayu-vim'
    Plug 'sainnhe/everforest'
    Plug 'ryanoasis/vim-devicons'
    " Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }

    " LSP
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'tami5/lspsaga.nvim'
    " " main one
    " Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    " " 9000+ Snippets
    " Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

    " Syntax
    Plug 'sheerun/vim-polyglot'
    Plug 'leafgarland/typescript-vim'
    Plug 'cakebaker/scss-syntax.vim'
    " Plug 'leafOfTree/vim-vue-plugin'
    Plug 'posva/vim-vue'
    Plug 'suy/vim-context-commentstring'
    Plug 'mattn/emmet-vim'
    Plug 'heavenshell/vim-jsdoc', {
                \ 'for': ['javascript', 'javascript.jsx','typescript'],
                \ 'do': 'make install'
                \}

    " Format
    Plug 'preservim/nerdcommenter'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'andymass/vim-matchup'

    " Utilities
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-fugitive'
    Plug 'folke/which-key.nvim'

call plug#end()
