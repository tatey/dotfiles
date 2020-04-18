# Environment
export PATH="$HOME/.bin:$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$HOME/.homebrew/share/npm/bin:$HOME/.homebrew/opt/go/libexec/bin:$HOME/Code/Go/bin:$PATH"
export ANDROID_HOME="$HOME/Library/Android/sdk/"
export GOPATH="$HOME/Code/Go"
export EDITOR=nvim

# Completion
autoload -U compinit
compinit -i

# Config
for config_file ($HOME/.zsh/*.zsh) source $config_file
