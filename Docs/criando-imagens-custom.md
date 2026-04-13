# Procedimento para criar (react/Vue/Angular)
Abaixo descrevo instrução para criação do CI/CD que criara a imagem React no IO
React ```
name: Deploy React Lab

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3

      - name: Build React
        run: |
          npm install
          npm run build

      - name: Enviar build para servidor
        uses: appleboy/scp-action@master
        with:
          host: ${{ vars.SSH_HOST }}
          username: ${{ vars.SSH_USER }}
          key: ${{ secrets.SSH_KEY }}
          port: ${{ vars.SSH_PORT }}
          source: "dist/*"
          target: "/var/inetpub/wwwroot/react/lab${{ vars.ALUNO_NUM }}"

      - name: Reiniciar serviço
        uses: appleboy/ssh-action@master
        with:
          host: ${{ vars.SSH_HOST }}
          username: ${{ vars.SSH_USER }}
          key: ${{ secrets.SSH_KEY }}
          port: ${{ vars.SSH_PORT }}
          script: |
            docker service update --force labs_react_lab${{ vars.ALUNO_NUM }}
```