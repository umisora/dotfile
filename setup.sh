
basedir=$(cd $(dirname $0) && pwd)

###########################################################################################
## Setup git secret
############################################################################################
git secrets --register-aws --global
git secrets --install ~/.git-templates/git-secrets
git config --global init.templateDir ~/.git-templates/git-secrets

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
ln -fns ${basedir}/dotfiles/gemrc ~/.gemrc
ln -fns ${basedir}/dotfiles/bundle.config ~/.bundle/config
ln -fns ${basedir}/configs/yamllint/ ~/.config/yamllint

echo setup vim
ln -fns ${basedir}/vim ~/.vim
ln -fns ${basedir}/themas/dircolors-solarized ~/.dircolors-solarized 

mkdir -p  ~/.vim/colors/
ln -fns ${basedir}/themas/vimcolor/solarized.vim ~/.vim/colors/

echo setup bash_completion
ln -fns /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
ln -fns /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine
ln -fns /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compofse
cd -

###########################################################################################
## Install Modules
############################################################################################
echo enable autoupdate homebrew
brew tap domt4/autoupdate
brew autoupdate --start --upgrade --cleanup --enable-notification

echo setup modules
#sh installs/homebrew_install.sh
sh installs/ruby_install.sh
sh installs/digdag_install.sh

if [ ! `which gcloud` ]; then
  echo Install gcloud command
  curl https://sdk.cloud.google.com | bash
fi
