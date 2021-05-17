if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
        Plug 'junegunn/vim-easy-align'
        Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
        Plug 'dikiaap/minimalist'
        Plug 'airblade/vim-gitgutter'
"       Plug 'ycm-core/YouCompleteMe'
        Plug 'jiangmiao/auto-pairs'
        Plug 'morhetz/gruvbox'
        Plug 'christoomey/vim-system-copy'
        Plug 'tpope/vim-surround'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set nocompatible
set tabstop=4
set number
set expandtab
set mouse=a
syntax on

set hlsearch
set incsearch
set relativenumber

"mappings
map <C-n> ::NERDTreeToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set t_Co=256
colorscheme gruvbox

set bg=dark

set showcmd
