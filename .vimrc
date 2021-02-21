set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'python-mode/python-mode'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/vim-auto-save'

call vundle#end()            " required
filetype plugin indent on    " required

"basic
set smartindent
set relativenumber
set number
set mouse=a
set autoindent
set tabstop=4
set shiftwidth=4
syntax enable
set updatetime=100

let g:rehash256 = 1
"let g:molokai_original = 1
colorscheme molokai_dark
"set background=dark
set term=screen-256color

"Mapping esc to cap_lock after entering vim and revert back when exiting vim
"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"setting font in gvim permanently
set guifont:Ubuntu\ Mono\ 13

"Important : Copying from vim to clipboard(Registers) and pasting from clipboard to vim
vnoremap <C-c> "+y
inoremap <C-v> <C-r><C-p>+

hi TabLineFill guibg=DarkGrey guifg=DarkGrey ctermbg=DarkGrey ctermfg=DarkGrey
hi TabLine ctermbg=DarkGrey guibg=DarkGrey

"removing menu,scrollbars and toolbars from gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

"set fast cursor
set ttyfast

set lazyredraw
set regexpengine=1

"Highlights the current line
set cursorline

"For control flow statements
inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"Say no to swap files
set noswapfile
set nobackup
set nowb

"Incremental search is good
set incsearch
set ignorecase
set smartcase

"Highlight search elements
set hlsearch
set title

"Scroll starts when cursor is 8 lines away from top/bottom
set scrolloff=8
set mouse=a

"""""""""""""""""" Nerdtree Settings """"""""""""""""""""""""""""""""""""
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
autocmd BufWinEnter * silent NERDTreeMirror
" Close nerdtree if it is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"double click t button to toggle NerdTree
map tt :NERDTreeToggle<CR> 
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""" Python-mode settings """"""""""""""""""""""""""""""""""
let g:pymode_rope = 1
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_show_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = '<C-b>'
let g:pymode_trim_whitespaces = 0
let g:pymode_lint_cwindow = 0
set completeopt=menuone,noinsert
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""" Super tab settings """"""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
set omnifunc=syntaxcomplete#Complete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""" AutoSave settings """""""""""""""""""""""""""""""""""""
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
