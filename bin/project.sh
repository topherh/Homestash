#!/bin/bash

## What do we need for a new project ##
## Project Type:
## Short Name:
## Full Name:

NAME=$1
DIR=~/Applications/$NAME 

mkdir $DIR
cd $DIR
git init .

echo '' > README.rst
echo '' > TODO.txt
echo '' > CHANGELOG.txt

git add * 
git commit -am "Created Stub for $NAME"


