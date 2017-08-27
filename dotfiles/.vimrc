set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Badwolf theme
Plugin 'sjl/badwolf'

" NerdTREE to navigate the file system within vim
Plugin 'scrooloose/nerdtree'
" NerdTREE with tabs
Plugin 'jistr/vim-nerdtree-tabs'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" interact with tmux
Plugin 'benmills/vimux'

" Visualise the vim undo tree
" https://vimawesome.com/plugin/gundo
Plugin 'sjl/gundo.vim'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" https://vimawesome.com/plugin/ctrlp-vim-everything-has-changed
Plugin 'ctrlpvim/ctrlp.vim'

" Indent Guides
" https://vimawesome.com/plugin/indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Indent Guides
" Enable on startup
let g:indent_guides_enable_on_vim_startup = 1

" NerdTREE config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Mapping for gundo
nnoremap <F5> :GundoToggle<CR>

syntax on
colorscheme badwolf
