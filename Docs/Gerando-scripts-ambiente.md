# Node via NVM (sem admin)

## Linux / WSL / Mac
A documentação para entender o script abaixo pode ser encontrata no remositório do nvm clicando aqui: https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
** O Trecho deve ser inserido no script de instalação
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 18
nvm use 18
node -v
npm -v

✔ Instala tudo dentro da pasta do usuário
✔ Não precisa sudo
✔ Permite trocar versões (ótimo para aula)

🔹 Windows (sem admin)

Use:
👉 nvm-windows (portable ou zip)

Mas atenção:

O instalador normal pede admin
Porém dá pra usar versão extraída manualmente

Alternativa mais simples:

🟡 Opção 2: Node portátil (ZIP)
Baixar versão ZIP do Node.js
Extrair em:
C:\Users\SEU_USUARIO\nodejs\
Adicionar no PATH do usuário:
C:\Users\SEU_USUARIO\nodejs\

✔ Funciona sem admin
✔ npm já vem junto

⚠️ Problemas comuns sem admin
1. Permissão global (npm -g)

Evite:

npm install -g ...

Use:

npx create-vite

ou:

npm install --save-dev
2. Angular CLI (ponto crítico)

O Angular normalmente usa:

npm install -g @angular/cli

👉 Sem admin, use:

npx @angular/cli new angular-app

✔ Resolve 100%

🧪 Teste rápido (para validar ambiente)

Depois de instalar:

node -v
npm -v
npx create-vite@latest teste
cd teste
npm install
npm run dev

Se abrir no navegador → ambiente OK ✅