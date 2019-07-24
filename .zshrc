# Add additional paths
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to oh-my-zsh installation
export ZSH="/home/joosua/.oh-my-zsh"

# Set the theme to load
ZSH_THEME="avit"

# Completion configuration
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"

# Update configuration
DISABLE_AUTO_UPDATE="false"
DISABLE_UPDATE_PROMPT="false"
export UPDATE_ZSH_DAYS=7

# Terminal configuration
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"

# History configuration
HIST_STAMPS="yyy-mm-dd"
HISTFILE="~/.history"
HISTSIZE="1000"
SAVEHIST="5000"

# Plugins to load
plugins=(
    git
    ssh-agent
)

# SSH-agent plugin configuration
zstyle :omz:plugins:ssh-agent lifetime 4h

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and SSH
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

