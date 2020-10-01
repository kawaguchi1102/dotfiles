#alias

# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -F'
alias ll='ls -alF'

alias pb='pwd | pbcopy'

alias cz='clear'
alias ccc='clear'

#vagrant alias
alias vu='vagrant up'
alias vh='vagrant halt'
alias vd='vagrant destroy'
alias vssh='vagrant ssh'
alias vgs='vagrant global-status'
alias vgsr='vagrant global-status|grep running'
alias vss-list='vagrant snapshot list'
alias vss-push='vagrant snapshot push'
alias vss-pop='vagrant snapshot pop'
alias vss-save='vagrant snapshot save'
alias vss-restore='vagrant snapshot restore --no-provision'
alias vss-delete='vagrant snapshot delete'

# gibo alias
alias gibo-init='gibo dump Node JetBrains macOS >> .gitignore'

#application alias
alias idea-p='open -a PhpStorm ./'
alias idea-w='open -a WebStorm ./'
alias idea-py='open -a PyCharm ./'
alias idea-go='open -a Goland ./'

alias cotedit='open -a CotEditor'
