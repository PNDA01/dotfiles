# Zsh configuration
# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="intheloop"

# Zsh settings
zstyle ':omz:update' mode auto
zstyle ':completion:*' menu select
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(
    git
    svn
    zsh-z
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
    sudo
    docker
    docker-compose
    copyfile
    copypath
    command-not-found
    colored-man-pages
    extract
    alias-finder
    aliases
    colorize
    history
    vscode
    you-should-use
)

source $ZSH/oh-my-zsh.sh

# Aliases
# Configuration files
alias zshconfig="nvim ~/.zshrc"
alias bashconfig="nvim ~/.bashrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# General shortcuts
alias c="clear"
alias g="git"
alias s="svn"

# File operations
alias s="svn"
alias l="ls"
alias la="ls -a"
alias ll="ls -la"

# Editor
export EDITOR="nvim"
alias vim="nvim"
alias v="nvim"
alias clip="xclip -selection clipboard"

# Development tools
# Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# PNPM Package Manager
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Python tools (pipx)
export PATH="$PATH:$HOME/.local/bin"

# Deno Runtime (if installed)
if [ -f "$HOME/.deno/env" ]; then
    . "$HOME/.deno/env"

    # Add deno completions to search path
    if [ -d "$HOME/completions" ]; then
        if [[ ":$FPATH:" != *":$HOME/completions:"* ]]; then
            export FPATH="$HOME/completions:$FPATH"
        fi
    fi

    # Initialize zsh completions
    autoload -Uz compinit
    compinit
fi

# pnpm
export PNPM_HOME="/home/AndresAlmeida/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
