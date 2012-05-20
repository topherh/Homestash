#! /bin/bash

cd ~/

echo "Cloning Homestash"
git clone git@github.com:topherh/Homestash.git .homestash

# Minimal Config mostly used on servers
ln -s .homestash/.bash_aliases
ln -s .homestash/.bashrc
ln -s .homestash/.conky
ln -s .homestash/.gitconfig
ln -s .homestash/.gitignore
ln -s .homestash/.profile
ln -s .homestash/.screenrc
ln -s .homestash/.vimrc
