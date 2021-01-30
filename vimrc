scriptencoding utf-8
set encoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'doums/darcula'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
call plug#end()

colorscheme darcula

syntax on                      " Turn on syntax highlighting
filetype plugin indent on      " Automatically detect file type and indent size
nnoremap <CR> :noh<CR><CR>

let g:NERDTreeWinPos="right"   " Display NERDTree on the right
let g:NERDTreeShowHidden=1     " Display dot files
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
let g:NERDTreeMinimalUI=1
augroup NERD
  au!
  au VimEnter * NERDTree       " Open NERDTree on startup
  au VimEnter * wincmd p       " Shift focus on the main window
  au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") &&
              \     b:NERDTree.isTabTree()) | q |
              \ endif          " Close vim if the only window open is NERDTree
augroup END

" let &t_SI = "\<Esc>]25;l\x7"
" let &t_EI = "\<Esc>]25;l\x7"
" au VimLeave * silent !echo -ne "\033]112\007"

set updatetime=100             " Write swap file every 100ms

" set laststatus=2

set fillchars=""               " No ugly ASCII art borders

set mouse=a                    " Enable mouse usage
set history=100                " Keep more history (default is 20)

set lazyredraw
set ttyfast                    " Scroll fast
set number                     " Show current line number
"set relativenumber             " Show relative line numbers
set expandtab                  " Expand tabs into spaces
set ruler                      " Show row and column information
set showmatch                  " Highlight matching parenthesis
set hlsearch                   " Highlight all search results
set incsearch                  " Search strings incrementally
set softtabstop=4              " Number of spaces per tab

set wildmenu                   " Suggest commands
set wildmode=longest,list,full

set list                       " Show whitespace:
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set colorcolumn=81,101,121     " Show column width rulers painted grey
hi ColorColumn ctermbg=234 ctermfg=227

" SLOW!!!
set cursorline                 " Highlight current line
hi CursorLine ctermbg=234

set autochdir                  " tags?
set tags+=./tags;              " tags?

hi clear SignColumn
hi GitGutterAdd    ctermfg=2       ctermbg=2
hi GitGutterChange ctermfg=3       ctermbg=3
hi GitGutterDelete ctermfg=DarkRed ctermbg=DarkRed
