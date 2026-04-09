FROM python:3.13-slim

# Configurações para Python não gerar lixo e logar em tempo real
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Instalação dos módulos em uma única camada (otimização de tamanho)
RUN pip install --no-cache-dir \
    # Web Framework & Servidor
    "fastapi[standard]" \
    uvicorn \
    python-multipart \
    # Banco de Dados & Migrações
    sqlalchemy \
    alembic \
    psycopg2-binary \
    # Validação e Configurações
    pydantic \
    pydantic-settings \
    python-dotenv \
    # Segurança & Autenticação
    "python-jose[cryptography]" \
    "passlib[bcrypt]" \
    # Integrações e Scrapping (O que você já usa)
    requests \
    beautifulsoup4 \
    gspread \
    google-auth \
    # Utilidades
    httpx \
    tzdata

# Porta padrão para o Traefik
EXPOSE 8000

# Comando de inicialização padrão
CMD ["python", "-m", "uvicorn", "fast_zero.app:app", "--host", "0.0.0.0", "--port", "8000", "--proxy-headers"]