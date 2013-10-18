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
