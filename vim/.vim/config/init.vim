" =========== Setup Vundle ==========
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" load plugins
so ~/.vim/config/plugins.vim

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
