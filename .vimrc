" Restore all options to their originals
set all&

" For vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'

    Plug 'tomasiser/vim-code-dark'
    Plug 'erichdongubler/vim-sublime-monokai'

    Plug 'tpope/vim-markdown'
    Plug 'bubujka/emmet-vim'
    Plug 'captbaritone/better-indent-support-for-php-with-html'
    "Plug '2072/php-indenting-for-vim'
call plug#end()

" Syntax highlighting
syntax on
set background=dark
set t_Co=256
colorscheme codedark
let g:sublimemonokai_term_italic = 1
let g:sublimemonokai_gui_italic = 1

" Encodings
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,euc-kr,cp949
set fileformat=unix
set fileformats=unix,dos

" For convenience
set number
set ruler
set wildmenu
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab "soft tab
set nowrap

" Indentation
filetype indent on
set autoindent
set cindent
set smartindent

" Code folding
set foldmethod=indent

" Remember fold states
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Highlight extra white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree

" Tabs
set splitbelow
set splitright
set termwinsize=14x0

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" For gvim
if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    if has('gui_win32')
        set guifont=Consolas:h10.5:cANSI
        set guifontwide=D2Coding:h10.5:cDEFAULT
    else
        set guifont=monospace\ 13
    endif
end
