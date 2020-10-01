export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# ターミナルでの補完を有効にする
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# ターミナルにブランチ名を表示する
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
# export PS1='\[\e[36m\][\[\e[36m\]\h\W] $(__git_ps1 " [\e[30m\]  [\[\e[30m\]%s\[\e[0m\]]")\$ '

if [ $UID -eq 0 ]; then
    PS1="\[\e[31m\]\u@\h\[\e[00m\]:\[\e[01m\]\W\[\e[00m\]\\$ "
else
    #PS1="\[\e[36m\][\u@\h\[\e[00m\]:\[\e[01m\]\W\[\e[0;36m]\[\e[00m\]$(__git_ps1)\[\e[37m\]\\$ "
    #PS1="\[\e[36m\][\u@\h\[\e[00m\]:\[\e[01m\]\W\[\e[0;36m\]]$(__git_ps1 [%s])\[\e[37m\]\$ "
    PS1='\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\\$ '
fi


# composerのpathを追加
export PATH=$PATH:~/.composer/vendor/bin:/usr/local/sbin

# nodebrewへのパスを通す
export PATH=/Users/kawaguchinaoya/.nodebrew/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/kawaguchinaoya/.composer/vendor/bin:/usr/local/sbin

# anyenv
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook bash)"

export EDITOR="vim"
