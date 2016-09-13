#!/bin/sh
basedir=$(cd $(dirname $0) && pwd)

# Commit Template
ln -fns ${basedir}/commit_template.txt ~/.commit_template
ln -fns ${basedir}/bashrc ~/.bashrc
ln -fns ${basedir}/vim ~/.vim
ln -fns ${basedir}/vimrc ~/.vimrc
ln -fns ${basedir}/gvimrc ~/.gvimrc
git config --global commit.template ~/.commit_template

