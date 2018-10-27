
"vim config for the ubuntu user
"auathor Haibo Tu

" <--- base config"
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
" base config --->"

" <--- cscope key map config"
nmap <C-[>s :cs find s <C-R>=expand("<cword>") <CR><CR>
nmap <C-[>g :cs find g <C-R>=expand("<cword>") <CR><CR>
nmap <C-[>c :cs find c <C-R>=expand("<cword>") <CR><CR>
nmap <C-[>f :cs find f <C-R>=expand("<cword>") <CR><CR>
" cscope key map config --->"

" <--- cscope and ctags config"
"path is the code didrectory
cscope add ~/.vim/tags/cscope.out ~/.vim/tags
set tags=~/.vim/tags/tags
" cscope and ctags config --->"

" <--- Auto pair complete begin"
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
" Auto pair complete begin --->"

" <--- Plug Vundle config begin "
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local
" cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" "auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Plug Vundle config end --->"
