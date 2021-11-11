sudo apt update -y && sudo apt upgrade -y
# packages
sudo apt install -y git-all build-essential zsh neovim mosh python3-dev python3-pip python3-setuptools
# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# nvm/node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install node
# fuck - the best command ever
pip3 install thefuck --user
