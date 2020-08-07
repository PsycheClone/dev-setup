#!/bin/bash

set -x

cd ~
git clone git@github.com:PsycheClone/dev-setup.git
cd dev-setup

./installp.sh COMMON
./installp.sh ZSH
./installp.sh PYTHON
./installp.sh NEOVIM
./installp.sh ALACRITTY
./installp.sh NVM

cd ~
mkdir .cfg
git clone --bare git@github.com:PsycheClone/dotfiles.git $HOME/.cfg
alias c='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
c checkout
c config --local status.showUntrackedFiles no

