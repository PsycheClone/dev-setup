#!/usr/bin/env bash

set -e

# -------- PYTHON -------- #
brew install python3
python3 -m pip install --upgrade virtualenv
pip3 install python-language-server
