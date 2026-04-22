FROM node:20-alpine

# Instalamos o utilitário 'nodemon' globalmente para facilitar o live-reload
# no ambiente de estudo, ou usamos o node --watch nativo.
RUN npm install -g nodemon

WORKDIR /app

# Porta padrão do ecossistema Inetz
EXPOSE 8000

# O comando assume que o arquivo principal do aluno chama-se index.js
# A flag --polling é necessária para detectar mudanças em volumes montados (SCP)
CMD ["nodemon", "--L", "--watch", ".", "index.js"]