#!/usr/bin/env bash

set -e

# -------- ZSH -------- #
sudo apt install zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
