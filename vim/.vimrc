
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

"path is the code didrectory
cscope add /path/cscope.out /path
set tags=/path/ags
