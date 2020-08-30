#!/bin/bash

set -x

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

cd
git clone git@github.com:PsycheClone/dev-setup.git
cd dev-setup

./installp.sh mac/COMMON
./installp.sh mac/ZSH
./installp.sh mac/PYTHON
./installp.sh mac/NEOVIM
./installp.sh mac/ALACRITTY
./installp.sh mac/NVM

cd
mkdir .cfg
git clone --bare git@github.com:PsycheClone/dotfiles.git $HOME/.cfg
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no

