# asdf-vm

# linux

# pacman install
if [ -d "$HOME/.asdf/shims" ]; then
    export PATH="$HOME/.asdf/shims:$PATH"
fi

# https://asdf-vm.com/guide/getting-started.htm
# for the linux install
if [ -f "$HOME/.asdf/asdf.sh" ]; then
    . "$HOME/.asdf/asdf.sh"
    . "$HOME/.asdf/completions/asdf.bash"
fi

# for the mac os install
if [ -f "/opt/homebrew/opt/asdf/libexec/asdf.sh" ]; then
    . "/opt/homebrew/opt/asdf/libexec/asdf.sh"
fi
