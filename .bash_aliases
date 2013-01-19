#ArchLinux & other Linux commands
alias upgrade='yaourt -Syua'
alias i='yaourt'

#directory listing shortcuts
alias ls='ls -lh --color'
alias ll='ls -la -group-directories-first --color'
alias lx='ls -lXB' # sort by extension
alias lk='ls -lSr' # sort by size, biggest last
alias lc='ls -ltcr' # sort by and show change time, most recent last
alias lu='ls -ltur' # sort by and show access time, most recent last
alias lt='ls -ltr' # sort by date, most recent last
alias lm='ls -al |more' # pipe through 'more'
alias lr='ls -lR' # recursive ls
alias tree='tree -Csu' # nice alternative to 'recursive ls'
alias grep='grep --color'
alias tail='tail -f -n 150'

#navigational shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..='cd ..'
alias ~='cd ~'
alias ltree='tree --dirsfirst -ChFupDaLg 1'

alias free='free -hmt'
alias restart='sudo rc.d restart'
alias rm='rm -I'
alias du='du -kh' # Makes a more readable output.
alias df='df -kTh'
alias more='less'
#read the fcuking manual!
alias rtfm='man'

#process listing
alias psx='ps auxw | egrep'
alias psgrep='ps auxw | egrep'
alias path='echo -e ${PATH//:/\\n}'

#git aliases
#alias git='hub' 
alias gst='git status -sb'
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


#Extract most known archives with one command
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
