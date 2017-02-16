#!/bin/sh
basedir=$(cd $(dirname $0) && pwd)

# Commit Template
ln -fns ${basedir}/commit_template.txt ~/.commit_template
ln -fns ${basedir}/bash_profile ~/.bash_profile
ln -fns ${basedir}/bashrc ~/.bashrc
ln -fns ${basedir}/vim ~/.vim
ln -fns ${basedir}/vimrc ~/.vimrc
ln -fns ${basedir}/gvimrc ~/.gvimrc
ln -fns ${basedir}/tmux.conf ~/.tmux.conf
ln -fns ${basedir}/themas/dircolors-solarized ~/.dircolors-solarized 
mkdir -p  ~/.vim/colors/
ln -fns ${basedir}/themas/vimcolor/solarized.vim ~/.vim/colors/

cd /usr/local/etc/bash_completion.d  
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion  
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion  
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
cd -
