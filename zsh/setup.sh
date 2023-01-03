#!/bin/bash

set -u

SCRIPT_DIR="$(dirname "$0")"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -sS https://starship.rs/install.sh | sh

if test -f "~/.zshrc"
then
	cp ~/.zshrc ~/.zshrc.backup
fi
cp "$SCRIPT_DIR/zshrc" ~/.zshrc


if ! test -d "~/.config"
then
	mkdir -p ~/.config
fi

if test -f "~/.config/starship.toml"
then
	cp ~/.config/starship.toml ~/.config/starship.toml.backup
fi
cp "$SCRIPT_DIR/starship/starship.toml" ~/.config/starship.toml

if test -d "~/.config/alacritty"
then
	cp -r ~/.config/alacritty ~/.config/alacritty.backup
fi
cp -r "$SCRIPT_DIR/alacritty" ~/.config/
