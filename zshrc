# Paths
export PATH="$HOME/.bin:$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$HOME/.homebrew/share/npm/bin:$HOME/.homebrew/opt/go/libexec/bin:$HOME/Code/Go/bin:$PATH"
export GIT_EDITOR="mvim -f"
export BUNDLER_EDITOR="mvim"
export GOPATH="$HOME/Code/Go"

# Load and run compinit
autoload -U compinit
compinit -i

# Config
for config_file ($HOME/.zsh/*.zsh) source $config_file

# Theme
PROMPT='%{$fg[white]%}%c$(git_prompt_info)$ % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*)"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

# rbenv
export RBENV_ROOT=/Users/Tate/.homebrew/opt/rbenv
eval "$(rbenv init -)"
