# disable ctrl-s and ctrl-q
[[ $- =~ i ]] && stty -ixoff -ixon

# cd without typing cd
shopt -s autocd

# nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# prompt (starship)
eval "$(starship init bash)"

# z
source ~/.bash/z.sh

# fzf
source ~/.local/share/nvim/plugged/fzf/shell/completion.bash
source ~/.local/share/nvim/plugged/fzf/shell/key-bindings.bash

# bash-completion
source /etc/profile.d/bash_completion.sh

source ~/.bash/functions
source ~/.bash/aliases
