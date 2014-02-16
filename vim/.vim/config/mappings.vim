" ====================================================
" General ============================================
" ====================================================

" remap leader key from \ to ,
let mapleader=","
let g:mapleader=","
let maplocalleader=","
let g:maplocalleader=","

" edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" faster commands
nmap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap ; :
inoremap jj <esc>
command W w
command Q q

" restore messed up vim
map <F5> :redraw! \| :noh \| <CR><C-w>=

" remove highlighting
nnoremap <leader><space> :noh<CR>

" ====================================================
" Navigation & Selection =============================
" ====================================================

" Move between wrapped lines as though they were physical lines.
noremap k gk
noremap j gj

" Easier start & end of line.
noremap H ^
nnoremap L $
vnoremap L $h

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

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

" ====================================================
" Tabs ===============================================
" ====================================================

map <C-t> :tabnew<CR>
imap <C-t> <ESC>:tabnew<CR>
nmap <Tab> gt
nmap <S-Tab> gT

" ====================================================
" Scripts ============================================
" ====================================================

" Convert 1.8 style Ruby hashes to terser 1.9 style
nnoremap <Leader>hh :%s/\v:(\w{-}) \=\> /\1: /g<CR>''

" path to the current file (mac os only)
nmap <leader>p :!echo % \| pbcopy<CR>

" ====================================================
" Plugins ============================================
" ====================================================

map <leader>e :NERDTreeTabsToggle<CR>
map <leader>o :CtrlP<CR>

" Rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>"

" Fugitive
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gl :Gblame<CR>
nmap <Leader>gb :Gbrowse<CR>
nmap <Leader>gg :Ggrep<Space>

" Gitv
" nmap <Leader>gv :Gitv<CR>

" Tags
nmap <silent> <leader>rt :!/usr/local/bin/ctags -R .<CR>
map <C-]> :vsp <CR>:exec("tjump ".expand("<cword>"))<CR> " open definition in a vertical split
nmap <leader>tb :TagbarToggle<CR>
