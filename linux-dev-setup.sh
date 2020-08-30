#!/bin/bash

set -x

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

cd
git clone git@github.com:PsycheClone/dev-setup.git
cd dev-setup

./installp.sh linux/COMMON
./installp.sh linux/ZSH
./installp.sh linux/PYTHON
./installp.sh linux/NEOVIM
./installp.sh linux/ALACRITTY
./installp.sh linux/NVM

cd
mkdir .cfg
git clone --bare git@github.com:PsycheClone/dotfiles.git $HOME/.cfg
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no

