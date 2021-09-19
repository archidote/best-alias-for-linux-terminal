#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please choose one of them : bash or zsh"
fi
aliases=$(cat <<EOF
# start_bestAliasLinux
# alias added by bestAliasLinux   
alias 1='sudo apt update && apt upgrade'
 
# alias added by bestAliasLinux   
alias 2='sudo apt autoremove && apt purge'
 
# alias added by bestAliasLinux   
alias p='ping'
 
# alias added by bestAliasLinux   
alias c='clear'
# alias added by bestAliasLinux   
alias d='date'
 
# alias added by bestAliasLinux   
alias e='exit'
 
# alias added by bestAliasLinux   
alias uu='sudo apt update && apt upgrade'

# alias added by bestAliasLinux   
alias jj='sudo apt autoremove'
 
# alias added by bestAliasLinux   
alias ai='sudo apt install'

# alias added by bestAliasLinux   
alias nn='sudo apt purge'
 
# alias added by bestAliasLinux   
alias l='sudo ls -alt'

# alias added by bestAliasLinux   
alias cdh='cd $HOME'

# alias added by bestAliasLinux   
alias f='sudo find -name $1'

# alias added by bestAliasLinux   
alias fn='sudo find / -name $1'

# alias added by bestAliasLinux   
alias ..='sudo cd ..'

# alias added by bestAliasLinux   
alias b='cd -'
 
# alias added by bestAliasLinux   
alias cdw='cd /var/www/html'

# alias added by bestAliasLinux   
alias Gc='git clone $1'

# alias added by bestAliasLinux   
alias ga='git add .'

# alias added by bestAliasLinux   
alias gs='git status'

# alias added by bestAliasLinux   
alias gpom='git push origin master'

# alias added by bestAliasLinux   
alias gpo='git push origin $1'

# alias added by bestAliasLinux   
alias sr='sudo systemctl restart $1'

# alias added by bestAliasLinux   
alias sss='sudo systemctl status $1'

# alias added by bestAliasLinux   
alias strt='sudo systemctl start $1'

# alias added by bestAliasLinux   
alias stp='sudo systemctl stop $1'

# alias added by bestAliasLinux   
alias se='sudo systemctl enable $1'

# alias added by bestAliasLinux   
alias ch='sudo hostnamectl set-hostname $1'

# alias added by bestAliasLinux  
alias s='sudo su'

# alias added by bestAliasLinux  
alias pi='ping 1.1.1.1'

# alias added by bestAliasLinux  
alias pii='ping t.co'
# end_bestAliasLinux
EOF
)
if [ "$1" == "bash" ]; then
	echo "${aliases}" >> $HOME/.bashrc
	source $HOME/.bashrc
else
    echo "${aliases}" >> $HOME/.zshrc
    source $HOME/.bashrc
fi

