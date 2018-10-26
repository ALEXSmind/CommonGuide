
"vim config for the ubuntu user
"auathor Haibo Tu

set tabstop=4
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=80
set hlsearch
set number
set cindent

syntax on

imap <C-k> <Esc>
vmap <C-k> <Esc>

nmap <C-[>s :cs find s <C-R>=expand("<cword>") <CR><CR>
nmap <C-[>g :cs find g <C-R>=expand("<cword>") <CR><CR>
nmap <C-[>c :cs find c <C-R>=expand("<cword>") <CR><CR>
nmap <C-[>f :cs find f <C-R>=expand("<cword>") <CR><CR>

"path is the code didrectory
cscope add ~/.vim/tags/cscope.out ~/.vim/tags
set tags=~/.vim/tags/tags
