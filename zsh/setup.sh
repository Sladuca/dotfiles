#!/bin/bash

set -u

SCRIPT_DIR="$(dirname "$0")"

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
cp "$SCRIPT_DIR/.zimrc" ~/.zimrc
