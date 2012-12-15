#ArchLinux & other Linux commands
alias upgrade='yaourt -Syua'
alias i='yaourt'
alias ls='ls -alh --color'
alias ll='ls -la --color'
alias grep='grep --color'
alias tail='tail -f -n 150'
alias ..='cd ..'
alias ...='cd ../..'
alias free='free -hmt'
alias restart='sudo rc.d restart'
alias rm='rm -I'

#git aliases
#alias git='hub' 
alias gst='git status -s'
alias gca='git commit -av'
alias gb='git branch --color'
alias gco='git checkout'
alias grv='git remote -v'
alias grst='git reset --hard HEAD'
alias gcl='git clone'
alias gad='git add .'
alias gp='git push'

#rails aliases
alias precompile="bundle exec rake assets:precompile"
alias dbmigrate='bundle exec rake db:migrate'
alias dbdrop='bundle exec rake db:drop'
alias dbcreate='bundle exec rake db:create'
alias dbseed='bundle exec rake db:seed'
alias s='rails s'
alias rgen='rails generate'
alias rdes='rails destroy'
alias c='rails console'
alias b='bundle'
alias be='bundle exec'
#misc
alias youtube-dl='youtube-dl -t'
