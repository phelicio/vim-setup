#!/bin/bash

sudo apt-get install vim git subversion

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle

git clone git://github.com/jiangmiao/auto-pairs.git 
git clone https://github.com/preservim/nerdcommenter.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/preservim/nerdtree.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/tpope/vim-surround.git
svn checkout https://github.com/sonph/onehalf/trunk/vim

mv vim/ onehalf/

cp vimrc ~./vim

export VIMINIT="source ~/.vim/vimrc"
