" File location for nvim: ~/.config/nvim/init.vim

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ignorecase
set nu
set relativenumber

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'shaunsingh/solarized.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'vim-airline/vim-airline'

call plug#end()

""""""""""""
" NerdTREE "
""""""""""""

" Open NerdTREE with Ctrl+N
nnoremap <C-n> :NERDTree<CR>

" Toggle NerdTREE and active window with Ctrl+T (overrides tagging)
nnoremap <C-t> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

""""""""
" Misc "
""""""""

" For Writing prose
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

colorscheme tokyonight
