#!/bin/bash

#Script install YCMD server in the home folder.

cd $HOME
rm ycmd -rf
git clone https://github.com/Valloric/ycmd.git
cd ycmd
git submodule update --init --recursive
./build.py --clang-completer

cd ~/.emacs.d

cat init.el.skel | sed "s:\${HOME}:$HOME:" > init.el
