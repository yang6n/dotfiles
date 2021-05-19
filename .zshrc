# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

#ZSH_THEME="robbyrussell"
#ZSH_THEME="half-life"
#ZSH_THEME="jyang"
ZSH_THEME="powerlevel10k/powerlevel10k"

# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

export UPDATE_ZSH_DAYS=13

#ENABLE_CORRECTION="true"

plugins=(git aws golang scala)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# 1) Safety
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

# 2) Listing, directories, and motion
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'

# 3) Text and editor commands
export VISUAL=vim
export EDITOR="$VISUAL"

# 4) grep options
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green for matches
unset GREP_OPTIONS

# 5) sort options
unset LANG
export LC_ALL=POSIX

# 6) History  
export HISTFILESIZE=10000000
export HISTSIZE=10000
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTTIMEFORMAT="%Y-%m-%d_%H:%M:%S "
export HISTIGNORE="pwd:ls:ll:ls -al:"
export HISTCONTROL="ignoredups"

# 7) Define any user-specific variables you want here.
source ~/.zshrc_custom

# 8) Define X11 DISPLAY
export DISPLAY=:0.0

# 9) Pathes
export PATH=.:$PATH:$HOME/bin:/usr/local/bin:~/.local/bin

autoload -U +X bashcompinit && bashcompinit

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jianyang/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jianyang/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jianyang/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jianyang/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
