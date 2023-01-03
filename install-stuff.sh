#!/bin/bash
set -u
SCRIPT_DIR="$(dirname "$0")"

if [[ $OSTYPE == 'darwin'* ]]
then
	xcode-select --install

	which -s brew
	if [[ $? != 0 ]]
	then
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi
else
	sudo apt update && sudo apt upgrade
	sudo apt install git-all build-essential zsh mosh python3-dev python3-pip python3-setuptools
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install node

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update

if [[ $OSTYPE == 'darwin'* ]]
then
	brew install neovim fzf
	$(brew --prefix)/opt/fzf/install
else
	sudo apt install neovim fzf
fi

pip3 install thefuck --user

