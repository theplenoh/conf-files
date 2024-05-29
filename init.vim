set nocompatible

" For vim-plug
call plug#begin('~/.config/nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'universal-ctags/ctags'
    Plug 'majutsushi/tagbar'

    Plug 'nathanaelkane/vim-indent-guides'

    Plug 'tomasiser/vim-code-dark'
    Plug 'erichdongubler/vim-sublime-monokai'

    Plug 'tpope/vim-markdown'
    Plug 'bubujka/emmet-vim'
    Plug 'captbaritone/better-indent-support-for-php-with-html'
    "Plug '2072/php-indenting-for-vim'
call plug#end()

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Syntax highlighting
syntax on
set background=dark
set t_Co=256
colorscheme sublimemonokai
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
autocmd FileType md setlocal shiftwidth=2 softtabstop=2 expandtab
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

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Terminal
" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        "botright new
        new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
            set noruler
            set nowildmenu
            set laststatus=0
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction
" Toggle terminal on/off (neovim)
nnoremap <C-t> :call TermToggle(14)<CR>
inoremap <C-t> <Esc>:call TermToggle(14)<CR>
tnoremap <C-t> <C-\><C-n>:call TermToggle(14)<CR>
" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

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
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

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
