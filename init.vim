" File location for nvim: ~/.config/nvim/init.vim

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab       " replaces tabs with spaces
set autoindent      " ENTER to put the cursor at the same level at the previous line
set smartindent     " as above, but respects current programming language
set ignorecase      " ignore case in searches
set hlsearch        " highlights searches
set incsearch       " incremental search
set nu              " show line numbers
set relativenumber  " show relative line numbers
set autoread        " autoreloads non written files 

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'shaunsingh/solarized.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

""""""""""""
" NerdTREE "
""""""""""""

" Open NerdTREE with Ctrl+N
" nnoremap <C-n> :NERDTree<CR>

" Toggle NerdTREE and active window with Ctrl+T (overrides tagging)
nnoremap <C-t> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

"""""""
" FZF "
"""""""

nnoremap <C-n> :Files<CR>

""""""""
" Misc "
""""""""

" \p pastes copied text into _ (without overriding paste buffer)
xnoremap <leader>p "_dP


" Adds zz movement to page up/down movements
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

colorscheme tokyonight
