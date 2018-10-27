#!/bin/bash

#Install the cscope software
function installSoftware()
{
    sudo apt-get install cscope
    sudo apt-get install ctags
    sudo apt-get install git
    sudo apt-get install vim
    sudo apt-get install ssh
}

#copy the default config file
function cpConfigFile()
{
    cp ../vim/.vimrc ~/
    cp ../git/.gitmsg ~/
}

#config the git 
function gitConfig()
{
    git config --global color.ui true
    git config --global user.email "tuhaibo511@126.com"
    git config --global user.name "Haibo Tu"
    git config --global core.editor vim
    git config --global commit.template ~/.gitmsg
    git config --global push.default simple
    git config --global credential.helper store
}

function installVimPlug()
{
    git clone https://github.com/VundleVim/Vundle.vim.git \
        ~/.vim/bundle/Vundle.vim
    vim +BundleInstall +qall
}

installSoftware
gitConfig
#cpConfigFile
installVimPlug
