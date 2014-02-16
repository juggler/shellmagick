" =========== General config ===========

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=1000               " store lots of :cmdline history
set number                     " always show line numbers
set autoread                   " reload files changed outside vim
set visualbell
set showcmd
set showmode

" highlight the current line
set cul
hi CursorLine term=none cterm=none ctermbg=7
" highlight search results
hi Search term=none cterm=none ctermbg=175

" normal cut & paste (works great with Vim executable from MacVim)
set clipboard=unnamed
" disable paste mode when leaving Insert Mode
au InsertLeave * set nopaste

" strip trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e
augroup Whitespace
  autocmd!
  " Remove trailing whitespace
  function! s:StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    normal 'Z
  endfunction

  au BufWritePre <buffer> :silent! call <SID>StripTrailingWhitespace()
augroup END

" Make sure you put this _before_ the ":syntax enable" command,
" otherwise the colors will already have been set
set background=light
syntax enable         " switch syntax highlighting on

set nowrap        " don't wrap lines
set linebreak

" to display status line
set laststatus=2

" =========== Color scheme ==========
"
" these settings should be AFTER vundle as solarized is installed as a plugin
se t_Co=16
let g:solarized_termcolors=256
colorscheme solarized

" =========== Indentation ===========
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set smartindent
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set softtabstop=2
set tabstop=2     " a tab is 2 spaces
set expandtab

" ========== Search ===========
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" =========== no backups ===========
set nobackup
set noswapfile
set nowb

" ========== Persisten Undo ===========
silent !mkdir ~/.vim/backups > /dev/null 2>$1
set undodir=~/.vim/backups
set undofile

" =========== Mouse ==============
set mouse=a
set ttymouse=xterm2
set mousefocus
set mousemodel=popup

" =========== Scrolling ==========
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" =========== Tags ===============
set tags+=tags
