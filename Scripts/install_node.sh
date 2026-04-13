#!/bin/bash
# Install Node Version Manager (NVM) and Node.js
# Autor: [Adriano Rosa] - [13/04/2026]

# Define local para execução da instalação do NVM
#!/bin/bash

export NVM_DIR="$HOME/.nvm"

if [ ! -d "$NVM_DIR" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 24
nvm use 24

node -v
npm -v