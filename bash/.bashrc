# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# disable ctrl-s and ctrl-q
[[ $- =~ i ]] && stty -ixoff -ixon

# cd without typing cd
shopt -s autocd

# fzf
# source ~/.local/share/nvim/plugged/fzf/shell/completion.bash
# source ~/.local/share/nvim/plugged/fzf/shell/key-bindings.bash

# bash-completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# source files from .bash.d/
for file in "$HOME"/.bash.d/*.sh; do
    . "$file"
done
