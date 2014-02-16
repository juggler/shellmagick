" remap leader key from \ to ,
let mapleader=","
let g:mapleader=","
let maplocalleader=","
let g:maplocalleader=","

" edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" fast saving
nmap <leader>w :w!<CR>

" close the current window
nnoremap <leader>q :q<CR>

" fast commands
nnoremap ; :

" window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" window splitting
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>

" buffer splitting
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" restore messed up vim
map <F5> :redraw! \| :noh \| <CR><C-w>=

" remove highlighting
nnoremap <leader><space> :noh<CR>

" tabs
map <C-t> :tabnew<CR>
imap <C-t> <ESC>:tabnew<CR>
nmap <Tab> gt
nmap <S-Tab> gT

" tags
nmap <silent> <leader>rt :!/usr/local/bin/ctags -R .<CR>
map <C-]> :vsp <CR>:exec("tjump ".expand("<cword>"))<CR> " open definition in a vertical split
nmap <leader>tb :TagbarToggle<CR>

" path to the current file (mac os only)
nmap <leader>p :!echo % \| pbcopy<CR>

map <leader>e :NERDTreeTabsToggle<CR>
map <leader>o :CtrlP<CR>

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>"
