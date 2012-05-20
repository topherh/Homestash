#! /bin/bash

cd ~/

echo "Cloning Homestash"
git clone git@github.com:topherh/Homestash.git .homestash

echo "Setup vim"
mkdir -p ~/.vim/{backup,tmp}

echo "Setup Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "Setup Plugins"
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/scrooloose/nerdtree.git

echo "Setup Homestash"
# Minimal Config mostly used on servers
ln -s .homestash/.bash_aliases
ln -s .homestash/.bashrc
ln -s .homestash/.gitconfig
ln -s .homestash/.gitignore
ln -s .homestash/.profile
ln -s .homestash/.screenrc
ln -s .homestash/.vimrc
