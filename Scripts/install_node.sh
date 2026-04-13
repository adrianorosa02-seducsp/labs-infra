#!/bin/bash
# Install Node Version Manager (NVM) and Node.js
# Autor: [Adriano Rosa] - [13/04/2026]

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# "call" do bash 👇
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"

# agora funciona
nvm install 24
nvm use 24