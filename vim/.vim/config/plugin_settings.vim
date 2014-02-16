" =========== Status Line ========
let g:airline_powerline_fonts = 1
let g:airline_section_b = ''

" =========== RSpec ==============
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

" =========== NERDTree ===========
let NERDTreeShowHidden=1 " show dotfiles

" =========== Fugitive ===========
autocmd QuickFixCmdPost *grep* cwindow " open Quickfix window after Ggrep

" =========== vim-textobj-ruby ===
runtime macros/matchit.vim

" =========== Gitv ===============
let g:Gitv_DoNotMapCtrlKey = 1

" =========== autoload ===========
au BufNewFile,BufRead *.ejs set filetype=html " highlight .ejs templates
