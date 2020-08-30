#!/usr/bin/env bash

set -e

# -------- NEOVIM -------- #
brew install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
brew install the_silver_searcher
