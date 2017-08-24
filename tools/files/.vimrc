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

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" https://vimawesome.com/plugin/ctrlp-vim-everything-has-changed
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme badwolf
