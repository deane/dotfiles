# If you come from bash you might have to change your $PATH.
 export GOPATH=/Users/deanelbaz/go
# export GOROOT=/home/deane/code/go/bin
# export PATH=/home/deane/code/go/bin:$PATH
 export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/go/bin:$GOPATH/bin
 export PATH=$PATH:/home/deane/Downloads/node-v6.10.0-linux-x64/bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/deanelbaz/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias gogo="cd $GOPATH/src/"
alias python="python3"

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
source /usr/local/bin/virtualenvwrapper.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/deanelbaz/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/deanelbaz/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/deanelbaz/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/deanelbaz/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# added by Anaconda3 4.4.0 installer
export PATH="/Users/deanelbaz/anaconda3/bin:$PATH"
