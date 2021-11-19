"restore all options to their originals
set all&

call plug#begin('~/.vim/plugged')
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-markdown'
    Plug 'preservim/nerdtree'
    Plug 'tomasiser/vim-code-dark'
    Plug 'erichdongubler/vim-sublime-monokai'
    Plug 'bubujka/emmet-vim'
call plug#end()

"syntax highlighting
syntax on
set t_Co=256
colorscheme codedark
"let g:sublimemonokai_term_italic = 1
"let g:sublimemonokai_gui_italic = 1

"encodings
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,euc-kr,cp949
set fileformat=unix
set fileformats=unix,dos

"for convenience
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
    set guioptions-=T
    set guioptions-=m
    if has('gui_win32')
        set guifont=Consolas:h10.5:cANSI
        set guifontwide=D2Coding:h10.5:cDEFAULT
    else
        set guifont=monospace\ 13
    endif
end

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
