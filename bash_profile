
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH=~/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias dbc='cd /Users/Pei/Dropbox/rubies/devbootcamp'
alias boom='rake db:drop:all && rake db:create:all && rake db:migrate && rake db:migrate RAILS_ENV=test && rake db:seed && rails s'
alias womp='rake db:drop:all && rake db:create:all && rake db:migrate && rake db:migrate RAILS_ENV=test'


alias be='bundle exec'
alias c='clear'
alias ll='ls -la' 
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
