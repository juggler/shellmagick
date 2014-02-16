" ====================================================
" Init ===============================================
" ====================================================

" package manager
Bundle 'gmarik/vundle'
" theme
Bundle 'altercation/vim-colors-solarized'

" ====================================================
" General ============================================
" ====================================================

" lightning fast statusline
Bundle 'bling/vim-airline'
" fuzzy file search
Bundle 'kien/ctrlp.vim'
" must have to open files on/specific.line:number
Bundle 'bogado/file-line'
" handle parentheses in a smart way
Bundle 'Raimondi/delimitMate'
" NERDTree
Bundle 'scrooloose/nerdtree'
" sane NERDTree
Bundle 'jistr/vim-nerdtree-tabs'
" tags
Bundle 'majutsushi/tagbar'
" git
Bundle 'tpope/vim-fugitive'
" send to tmux function
Bundle 'jgdavey/tslime.vim'
" seamlessly Navigate Vim and tmux Splits
Bundle 'christoomey/vim-tmux-navigator'
" comment all shit
Bundle 'scrooloose/nerdcommenter'

" ====================================================
" Ruby & Rails =======================================
" ====================================================

Bundle 'vim-ruby/vim-ruby'
Bundle 'slim-template/vim-slim'
Bundle 'thoughtbot/vim-rspec'

Bundle 'tpope/vim-endwise'

Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

" ====================================================
" Clojure ============================================
" ====================================================

Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'

" ====================================================
" CSS ================================================
" ====================================================

Bundle 'groenewege/vim-less'

" ====================================================
" CoffeeScript =======================================
" ====================================================

Bundle "kchmck/vim-coffee-script"
