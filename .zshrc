# Path to your oh-my-zsh installation.
export ZSH=$HOME/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kphoen"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump git sublime chucknorris brew tmux tmuxinator python pyenvi osx docker golang vagrant)

# User configuration

PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH=$PATH:$HOME/bin:/usr/local/sbin
PATH="$HOME/.cargo/bin:$PATH"
export PATH

# export MANPATH="/usr/local/man:$MANPATH"
#ZSH_TMUX_ITERM2=true
#ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. $HOME/.zshrc.d/*

#HISTFILE=~/.histfile.$HOST
#HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt beep extendedglob
setopt inc_append_history share_history
unsetopt autocd
bindkey -e

zstyle :compinstall filename '/home/leonidp/.zshrc'

autoload -Uz compinit
compinit

export EDITOR="/usr/bin/vim -f"

export GOPATH=$HOME/go

fpath=($HOME/zsh-functions/ $fpath[@])

VLESS=$(find /usr/share/vim -name less.sh)

#if [ x"$VLESS" != x"" -a ! -z $VLESS ]; then
#  alias less=$VLESS
#fi

if [[ $HOST != *MacBook* && $HOST != *leonid* && $HOST != vd-leonidp* && $HOST != *podoll* && $HOST != US* ]]; then
        source ~/git-even-faster.plugin.zsh
fi

eval "$(direnv hook zsh)"


