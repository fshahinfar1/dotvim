#!/bin/sh
# This script copies this directory to ~/.vim/
# The old ~/.vim/ directory will be renamed to ~/_vim_old/

# update submodules
git submodule update --init --recursive
if [ $? != 0 ]; then
  echo failed to update submodules
  exit 1
fi

# install dependencies
# clang and clang formatter
# TODO: to be written
if [ ! `command -v clang &> /dev/null` ]
then
	echo You need to install clang and clang-format.
	echo After installing that rerty. 
	exit
fi

backup_addr=$HOME/_vim_old/
target_addr=$HOME/.vim/
if [ -d $backup_addr ]; then
  echo "a previous backup already exists remove or rename and then continue."
  echo "should remove previous backup? (y/n)"
  read cmd
  if [ "x$cmd" = "xy" ]; then
    rm -rf $backup_addr
  else
    echo "please mv, rename or delete '$backup_addr' directory and try again"
    exit 1
  fi
fi

# backup previous config
if [ -d $target_addr ]; then
  cp -r $target_addr $backup_addr
  rm -rf $HOME/.vim/
fi

# place new vim config
cp -r ../dotvim/ $HOME/.vim/

