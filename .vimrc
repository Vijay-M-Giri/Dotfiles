execute pathogen#infect()

"basic
set smartindent
set relativenumber
set number
set mouse=a
set autoindent
set tabstop=4
set shiftwidth=4
syntax enable

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

"Highlights the current line
set cursorline

"For control flow statements
inoremap {<CR> {<CR>}<Esc>O

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

"Use tab for auto-complete
"=========================
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"

" plugins
filetype plugin on


" Nerdtree Settings
set mouse=a
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set ttyfast
set lazyredraw
"double click t button to toggle NerdTree
map tt :NERDTreeToggle<CR> 
"click [] to toggle Tagbar
map [] :TagbarToggle<CR> 

