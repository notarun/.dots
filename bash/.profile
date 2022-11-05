# Environment variables
export EDITOR=nvim
export BROWSER=firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export MYVIMRC="$HOME/.config/nvim/init.vim"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# android
export ANDROID_SDK_ROOT="$HOME/.android/sdk"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/bin"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"

# neovim as manpager
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# golang
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

# bash-completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /opt/homebrew/etc/profile.d/bash_completion.sh ]; then
    . /opt/homebrew/etc/profile.d/bash_completion.sh
  fi
fi
