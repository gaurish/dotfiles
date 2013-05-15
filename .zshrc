# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="juanghurtado"

export VISUAL=/usr/bin/vim
export TERM=xterm-256color

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=1000

# for tmux: export 256color
[ -n "$TMUX" ] && export TERM=screen-256color

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#-------------------
# Personnal Aliases
#-------------------

if [ -d $HOME/.alias.d ]; then
    for x in $HOME/.alias.d/* ; do
        test -f "$x" || continue
        source "$x"
    done
fi


#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------

if [ -d $HOME/.function.d ]; then
    for x in $HOME/.function.d/* ; do
        test -f "$x" || continue
        source "$x"
    done
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR=vim
export JAVA_HOME="/usr/lib/jvm/java-7-oracle"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

