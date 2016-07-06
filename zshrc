# Paths
export PATH="$HOME/.bin:$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$HOME/.homebrew/share/npm/bin:$HOME/.homebrew/opt/go/libexec/bin:$HOME/Code/Go/bin:$PATH"
export BUNDLER_EDITOR="mvim"
export GOPATH="$HOME/Code/Go"

# Completion
autoload -U compinit
compinit -i

# Config
for config_file ($HOME/.zsh/*.zsh) source $config_file

# Direnv
eval "$(direnv hook zsh)"
