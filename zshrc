# Environment
export PATH="$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH"
export GIT_EDITOR="mvim -f"
export BUNDLER_EDITOR="mvim"

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
alias c='cd $HOME/Code/Remote'
alias d='cd $HOME/Desktop'
alias w='cd $HOME/Work/Code'

alias gs='git status --short'
alias gd='git diff'
alias gau='git ls-files --other --exclude-standard -z | xargs -0 git add -Nv' # Add all untracked files (with `git add --intent-to-add`)
alias gaur="git ls-files --exclude-standard --modified -z | xargs -0 git ls-files --stage -z | gawk 'BEGIN { RS=\"\0\"; FS=\"\t\"; ORS=\"\0\" } { if (\$1 ~ / e69de29bb2d1d6434b8b29ae775ad8c2e48c5391 /) { sub(/^[^\t]+\t/, \"\", \$0); print } }' | xargs -0t -n 1 git reset -q -- 2>&1 | sed -e \"s/^git reset -q -- /reset '/\" -e \"s/ *$/'/\"" # Unstage (reset) any files that you haven't added any hunks from
alias gld="git fsck --lost-found | grep '^dangling commit' | cut -d ' ' -f 3- | xargs git show -s --format='%ct %H' | sort -nr | cut -d ' ' -f 2 | xargs git show --stat" # Show all dangling commits
alias glg="git log --graph --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %C(black bold)- %an %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gla='glg HEAD $(cd "$(git rev-parse --git-dir)" && find refs/{heads,remotes,tags} -type f)'

alias ded='rm -Rf $HOME/Library/Developer/Xcode/DerivedData/'

alias reload='. $HOME/.zshrc'

# Functions
hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}

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
