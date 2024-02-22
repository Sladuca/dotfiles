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
		if [[ $(uname -p) == 'arm' ]]
		then
			echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
			eval "$(/opt/homebrew/bin/brew shellenv)"
		else
			echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
			eval "$(/usr/local/bin/brew shellenv)"
		fi
	fi

else
	sudo apt update && sudo apt upgrade
	sudo apt install git-all build-essential zsh mosh python3-dev python3-pip python3-setuptools neovim fzf

    curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
    sudo dpkg -i ripgrep_13.0.0_amd64.deb

fi

curl https://get.volta.sh | zsh
$HOME/.volta/bin/volta install node

if [[ $OSTYPE == 'darwin'* ]]
then
    echo "hi"
	brew install neovim fzf ripgrep thefuck alacritty
	$(brew --prefix)/opt/fzf/install
else
	sudo apt install neovim fzf python3-dev python3-pip python3-setuptools
    pip3 install thefuck --user
fi
