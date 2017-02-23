execute pathogen#infect()
syntax on
filetype plugin indent on

" Nginx syntax
au BufRead,BufNewFile /etc/nginx/*,/Users/vijay/*/conf/* if &ft == '' | setfiletype nginx | endif

" Dockerfile syntax
au BufNewFile,BufRead [Dd]ockerfile,Dockerfile.* set filetype=dockerfile

" Pyhton
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Tab stops config
" obviously
set ts=2 "tabstop
set sw=2 "shiftwidth
set bs=2
set expandtab

autocmd FileType html
 \ setlocal shiftwidth=2 |
 \ setlocal tabstop=2
autocmd FileType coffee
 \ setlocal shiftwidth=2 |
 \ setlocal tabstop=2
autocmd FileType js
 \ setlocal shiftwidth=2 |
 \ setlocal tabstop=2
autocmd FileType styl
 \ setlocal shiftwidth=2 |
 \ setlocal tabstop=2
autocmd FileType python
 \ setlocal shiftwidth=2 |
 \ setlocal tabstop=2
