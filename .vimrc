"bundle/
"nerdtree      python-mode   vim-airline   vim-fugitive  vim-gitgutter vim-gocode    vim-golang

"colors/
"candy.vim      jellybeans.vim vividchalk.vim wombat.vim

call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set nu
"autocmd vimenter * NERDTree
set guifont=Monaco:h12
"colorscheme vividchalk
colorscheme jellybeans
let NERDTreeIgnore = ['\.pyc$']

set expandtab
set shiftwidth=2
set softtabstop=2
set ts=4
set completeopt=preview,longest,menuone

set rtp+=$GOROOT/misc/vim

" disable complete on dot for python.
let g:pymode_rope_complete_on_dot = 0

" airline settings
let g:airline_left_sep = '▶ '
let g:airline_right_sep = '◀ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:golang_goroot = "/usr/local/go"

" linter status
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" transparency
" set transparency=5

" hard tabs width

" NERDTree shortcuts
nmap § :NERDTreeToggle<Enter>
nmap <F14> :NERDTreeToggle<Enter>
imap <F14> <esc>:NERDTreeToggle<Enter>

" python macros
command Ipdb execute ":normal oimport ipdb; ipdb.set_trace()<ESC>"
nmap <C-b> :Ipdb<Enter> 

" Go shortcuts
nmap <F5> :Fmt<Enter>
imap <F5> <esc>:Fmt<Enter>

"autocmd FileType go compiler golang

set backupdir=/Users/deanelbaz/vimtmp
set directory=/Users/deanelbaz/vimtmp
