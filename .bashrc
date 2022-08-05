#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# If tmux not already running then start a new tmux session
if command -v tmux>/dev/null; then
	if [ ! -z "$PS1" ]; then
		[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
	fi
fi

############################################################

source /home/louis/dotfiles/bashrc/bashrc_system_default
source /home/louis/dotfiles/bashrc/bashrc_exports
source /home/louis/dotfiles/bashrc/bashrc_functions
#source ~/.bash_completion.d/python-argcomplete

eval "$(hub alias -s)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/louis/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/louis/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/louis/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/louis/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

