FROM nginx:alpine
# Configuração para SPA (evita 404 em rotas)
RUN printf "server {\n  listen 8000;\n  location / {\n    root /app;\n    index index.html;\n    try_files \$uri \$uri/ /index.html;\n  }\n}" > /etc/nginx/conf.d/default.conf
WORKDIR /app
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]