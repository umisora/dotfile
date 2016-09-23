#!/bin/sh
basedir=$(cd $(dirname $0) && pwd)

# Commit Template
ln -fns ${basedir}/commit_template.txt ~/.commit_template
ln -fns ${basedir}/bashrc ~/.bashrc
ln -fns ${basedir}/vim ~/.vim
ln -fns ${basedir}/vimrc ~/.vimrc
ln -fns ${basedir}/gvimrc ~/.gvimrc
git config --global commit.template ~/.commit_template
git config --global core.editor 'vim -c "set fenc=utf-8"'
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br browse
git config --global alias.pr pull-request
