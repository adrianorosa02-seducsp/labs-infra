#!/bin/bash
# Install Node Version Manager (NVM) and Node.js
# Autor: [Adriano Rosa] - [13/04/2026]

# Define local para execução da instalação do NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Baixa o script de instalação do NVM e executa
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash/
echo "NVM instalado com sucesso!"