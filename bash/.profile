# Environment variables
export EDITOR=nvim
export BROWSER=firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export MYVIMRC="$HOME/.config/nvim/init.vim"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# neovim as manpager
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
