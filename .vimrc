"restore all options to their originals
set all&
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'tomasiser/vim-code-dark'
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"syntax highlighting
syntax on
set t_Co=256
colorscheme codedark
let g:sublimemonokai_term_italic = 1
let g:sublimemonokai_gui_italic = 1

"encodings
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,euc-kr,cp949
set fileformat=unix
set fileformats=unix,dos

"for convinience
set number
set ruler
set wildmenu
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab "soft tab
set nowrap

"code folding & indentation
set foldmethod=indent
set autoindent
set cindent

"gvim
if has("gui_running")
    :set guifont=Consolas:h10.5:cANSI
    :set guifontwide=D2Coding:h10.5:cDEFAULT
    :set guioptions-=T
endif

"remember fold states
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

"highlight extra white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

set splitbelow
set splitright
set termwinsize=14x0

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
