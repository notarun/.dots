#
# aliases
#

# colorful grep
alias grep='grep --colour=auto'

# cd, ls
alias ..='cd ..'
alias l='ls'
alias ll='ls -l --group-directories-first'
alias la='ls -lA --group-directories-first'
alias ls='ls --color=auto'

# mpv
alias m='mpv --no-video --cache=yes'

# vim
alias v='nvim'
alias vim='nvim'

# git
alias g='git'
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gd='git diff'
alias gs='git status'
alias gc='git commit -v'
alias gpu='git pull'
alias gcl='git clone'
alias gmr='git merge'
alias gch='git checkout'
alias gchm='git checkout -- $(git ls-files -m | fzf -m)'  # checkout multiple files (fzf)

# php
alias pa='php artisan'

# xclip
alias xc='xclip -selection clipboard'
