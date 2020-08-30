#!/usr/bin/env bash

set -e

# -------- COMMON -------- #
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git
brew install curl
