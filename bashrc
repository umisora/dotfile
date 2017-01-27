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
alias ls='gls --color=auto'
eval $(gdircolors ~/.dircolors-solarized)

# Git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
alias git='hub'

# Docker
source /usr/local/etc/bash_completion.d/docker.bash-completion
source /usr/local/etc/bash_completion.d/docker-machine.bash-completion
source /usr/local/etc/bash_completion.d/docker-compose.bash-completion

# Vim
alias vi='vim'

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# プロンプトの表示を変更
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

