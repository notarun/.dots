# ~/.dots

Personal collection of scripts and dotfiles.

```bash
brew install stow  # installs stow on mac
apt install stow   # installs stow on debian
stow dirname       # create symbolic link for dirname
```

#### vim-plug installation
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
