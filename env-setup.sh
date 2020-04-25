#! /bin/bash

cd ~/

echo "Cloning Homestash"
git clone git@github.com:topherh/Homestash.git .homestash

echo "Setup Homestash"
# Minimal Config mostly used on servers
ln -s .homestash/.bash_aliases
ln -s .homestash/.bashrc
ln -s .homestash/.gitconfig
ln -s .homestash/.gitignore
ln -s .homestash/.profile
ln -s .homestash/.screenrc
ln -s .homestash/.vimrc

echo "Setup vim"
mkdir -p ~/.vim/{backup,tmp}

echo "Setup Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Setup Plugins"
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/scrooloose/nerdtree.git

## For tracking purposes, but not universially installed
## git clone git://github.com/tpope/vim-rails.git
## git clone git://git.wincent.com/command-t.git
