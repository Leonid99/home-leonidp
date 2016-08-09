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
plugins=(autojump git sublime chucknorris brew tmux tmuxinator python pyenvi osx docker)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin:$HOME/netbeans/bin:$HOME/bin
# export MANPATH="/usr/local/man:$MANPATH"
#ZSH_TMUX_ITERM2=true
#ZSH_TMUX_AUTOSTART=true
export GOPATH=$HOME/go

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

export CHEF_USER_NAME=lpodolny
export CHEF_CLIENT_KEY="$(cat $HOME/.chef/leonidpodolny.pem)"
export DROPLET_SSH_KEY="$(cat $HOME/.ssh/id_testing)"
export DIGITALOCEAN_SSH_KEY_IDS=aa:85:1f:ef:95:02:a2:70:11:2d:59:bf:3d:b6:c1:d2
export DIGITALOCEAN_ACCESS_TOKEN=0a1d6ff24304e0417c505d356a4825420fa489ddba3c3ab049d74276912db3ef
export DIGITALOCEAN_ACCESS_TOKEN1=f49923587be3d543c110b2826ba315690d14265d42eb3940f76dd8aa80e276e8
export DIGITALOCEAN_ACCESS_TOKEN2=0e1c8146dba3a0daa590dbae7a619cbf026b0b17468b5401cd82996de03c471e
export KITCHEN_LOCAL_YAML="$HOME/.kitchen/config.yml"
eval "$(chef shell-init $(basename $SHELL))"


export CHEF_USER_NAME=lpodolny
export CHEF_CLIENT_KEY="$(cat $HOME/.chef/leonidpodolny.pem)"
export DROPLET_SSH_KEY="$(cat $HOME/.ssh/id_testing)"
export DIGITALOCEAN_SSH_KEY_IDS=aa:85:1f:ef:95:02:a2:70:11:2d:59:bf:3d:b6:c1:d2
export DIGITALOCEAN_ACCESS_TOKEN=0a1d6ff24304e0417c505d356a4825420fa489ddba3c3ab049d74276912db3ef
export DIGITALOCEAN_ACCESS_TOKEN1=f49923587be3d543c110b2826ba315690d14265d42eb3940f76dd8aa80e276e8
export DIGITALOCEAN_ACCESS_TOKEN2=0e1c8146dba3a0daa590dbae7a619cbf026b0b17468b5401cd82996de03c471e
export KITCHEN_LOCAL_YAML="$HOME/.kitchen/config.yml"
eval "$(chef shell-init $(basename $SHELL))"

fpath=($HOME/zsh-functions/ $fpath[@])

VLESS=$(find /usr/share/vim -name less.sh)

#if [ x"$VLESS" != x"" -a ! -z $VLESS ]; then
#  alias less=$VLESS
#fi

if [[ $HOST != *MacBook* && $HOST != *leonid* && $HOST != vd-leonidp* && $HOST != *podoll* && $HOST != US* ]]; then
        source ~/git-even-faster.plugin.zsh
fi

#[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"


if which pyenv > /dev/null; then
        eval "$(pyenv init -)"
fi
export PYENV_ROOT=/usr/local/var/pyenv 

export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
