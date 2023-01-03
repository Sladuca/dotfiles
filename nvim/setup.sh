#!/bin/bash

set -u 
SCRIPT_DIR="$(dirname $0)"

if test -d ~/.config/nvim
then
	mv ~/.config/nvim "$HOME/.config/nvim.backup-$RANDOM"
fi

mkdir -p ~/.config/nvim
cp -r "$SCRIPT_DIR/include" ~/.config/nvim
cp "$SCRIPT_DIR/init.vim" ~/.config/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

