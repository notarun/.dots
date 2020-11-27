PLATFORM=$(uname -s)

SCRIPTS_PATH=~/.bin/
LOCAL_BIN_PATH=~/.local/bin
COMPOSER_PATH=~/.config/composer/vendor/bin
FZF_PATH=~/.local/share/nvim/plugged/fzf/bin

# Environment variables
export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=nvim
export BROWSER=firefox
export MYVIMRC=~/.config/nvim/init.vim
export PATH="${PATH}:${SCRIPTS_PATH}:${COMPOSER_PATH}:${FZF_PATH}:${LOCAL_BIN_PATH}"
export FZF_DEFAULT_COMMAND='fdfind --type f'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# neovim as manpager
export MANPAGER="nvim -c 'set ft=man' -"
