# Environment
export PATH="$HOME/.bin:$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$HOME/.homebrew/share/npm/bin:$HOME/.homebrew/opt/go/libexec/bin:$HOME/Code/Go/bin:$PATH"
export GIT_EDITOR="mvim -f"
export BUNDLER_EDITOR="mvim"
export GOPATH="$HOME/Code/Go"

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="sammy"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew gem rails3)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# rbenv
export RBENV_ROOT=/Users/Tate/.homebrew/opt/rbenv
eval "$(rbenv init -)"

# Aliases
alias c='cd $HOME/Code'
alias d='cd $HOME/Desktop'
alias j='cd $HOME/Downloads'

alias gs='git status --short'
alias gd='git diff'
alias gla='glg HEAD $(cd "$(git rev-parse --git-dir)" && find refs/{heads,remotes,tags} -type f)'

alias reload='. $HOME/.zshrc'

# git log search
function gls() {
  local phrase="$1"
  shift
  if [[ $# == 0 ]]
  then
    local default_range=HEAD
  fi
  git log --patch --pickaxe-all -S"$phrase" "$@" $default_range
}

# Disable autocorrect
unsetopt correct_all
