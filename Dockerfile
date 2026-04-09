FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Instala o poetry para gerenciar suas dependências reais
RUN pip install poetry

# Copia os arquivos de dependência do SEU lab
COPY pyproject.toml poetry.lock* /app/

# Instala TUDO (SQLAlchemy, Pydantic, etc)
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi --no-root

COPY . /app

# Comando com proxy-headers para o Traefik
CMD ["python", "-m", "uvicorn", "fast_zero.app:app", "--host", "0.0.0.0", "--port", "8000", "--proxy-headers"]