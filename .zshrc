export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/dean/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  golang
  ubuntu
  pip
  python
  git
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

alias gogo="cd $GOPATH/src/"

# alias python="python3"

# git shortcuts
alias gane='git commit --amend --no-edit'
alias gits='git status'
alias gfo='git fetch origin'
alias gco='git checkout'
alias gitb='git symbolic-ref HEAD | sed -n "s/.*\/\(.*\)$/\1/p"'

# JSON pretty print
alias jpp='python -m json.tool'

#find in files
fif () {
  echo "find . -type f -exec grep -Hn \"$1\" {} \;"
  find . -type f -exec grep -Hn "$1" {} \;
}

#find in files with extension
fie () {
  echo "find . -name \"*$1\" -type f -exec grep -Hn \"$2\" {} \;"
  find . -name "*$1" -type f -exec grep -Hn "$2" {} \;
}
alias kibana='docker run --name kibana --link mf2:elasticsearch -p 5601:5601 -d kibana:5.1.2'
# source /usr/local/bin/virtualenvwrapper.sh

export PATH="$PATH:/snap/bin"
