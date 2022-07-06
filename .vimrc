" Restore all options to their originals
set all&

" For vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'universal-ctags/ctags'
    Plug 'majutsushi/tagbar'

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
set ttimeoutlen=100
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

" Specific indenting widths for different filetypes
autocmd FileType markdown setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=4 softtabstop=4 expandtab

" NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree

" Tagbar
"let g:tagbar_ctags_bin =
nmap <C-i> :TagbarToggle<CR>

" Splits
set splitbelow
set splitright
set termwinsize=16*0

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <C-t> :term<CR>

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

" Remove newbie crutches in Command Mode
"cnoremap <Down> <Nop>
"cnoremap <Left> <Nop>
"cnoremap <Right> <Nop>
"cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
