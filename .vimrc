set shell=bash

execute pathogen#infect()

" Various settings copied from blog posts
syntax on
filetype plugin indent on
colorscheme jellybeans
set nu
autocmd BufWritePre * :%s/\s\+$//e
set viminfo='100,\"2500,:200,%,n~/.viminfo
set expandtab
set shiftwidth=2
set softtabstop=2
set ts=4
set completeopt=preview,longest,menuone

let g:pymode_python = 'python3'
let g:ycm_autoclose_preview_window_after_completion=1

" snippets
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Right>"
let g:UltiSnipsJumpBackwardTrigger="<Left>"

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '

"statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" NERDTree
let NERDTreeIgnore = ['\.pyc$']
nmap ` :NERDTreeToggle<Enter>

"Golang
let g:go_fmt_command = "goimports"
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>l :GoMetaLinter <CR>
au Filetype go nnoremap <leader>d :GoDoc <CR>
