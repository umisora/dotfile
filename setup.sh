#!/bin/sh
basedir=$(cd $(dirname $0) && pwd)

###########################################################################################
## Setup Dotfiles
############################################################################################
echo setup dotfikes
ln -fns ${basedir}/templates/commit_template.txt ~/.commit_template
ln -fns ${basedir}/dotfiles/bash_profile ~/.bash_profile
ln -fns ${basedir}/dotfiles/bashrc ~/.bashrc
ln -fns ${basedir}/dotfiles/vimrc ~/.vimrc
ln -fns ${basedir}/dotfiles/gvimrc ~/.gvimrc
ln -fns ${basedir}/dotfiles/tmux.conf ~/.tmux.conf
ln -fns ${basedir}/dotfiles/gitconfig ~/.gitconfig
ln -fns ${basedir}/dotfiles/bundle.config ~/.bundle/config

ln -fns ${basedir}/vim ~/.vim
ln -fns ${basedir}/themas/dircolors-solarized ~/.dircolors-solarized 

mkdir -p  ~/.vim/colors/
ln -fns ${basedir}/themas/vimcolor/solarized.vim ~/.vim/colors/

cd /usr/local/etc/bash_completion.d  
ln -fns /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion  
ln -fns /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion  
ln -fns /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
cd -

###########################################################################################
## Install Modules
############################################################################################
echo setup modules
sh installs/homebrew_install.sh
sh installs/ruby_install.sh
sh installs/digdag_install.sh
