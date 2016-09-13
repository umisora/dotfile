#
# .bashrc 
#

# grep -----------------------------------------------------------
# GREP_COLORは、検索ワードを色づけするために使用。
# 色づけすると、視認性が格段にあがる。
# -Eオプションは、拡張正規表現を使用する場合に指定
export GREP_COLOR='1;37;41'
alias grep='grep -E --color=auto'

# Aliases --------------------------------------------------------
alias ll='ls -l'

# lsのカラー化
export LS_COLORS='no=01;37:fi=00:di=01;36:ln=01;32:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;32;01:ex=01;33:*core=01;31:'
alias ls='ls -G'

# Git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
alias git='hub'

# Docker
source /usr/local/etc/bash_completion.d/docker.bash-completion
source /usr/local/etc/bash_completion.d/docker-machine.bash-completion
source /usr/local/etc/bash_completion.d/docker-compose.bash-completion

# プロンプトの表示を変更
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[97m\]\u\[\033[00m\]:\[\033[36m\]\w\[\033[35m\]$(__git_ps1)\[\033[00m\]\$ '

# VimをVim Kaoriyaへ
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

