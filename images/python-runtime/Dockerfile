FROM python:3.13-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Adicionando os módulos principais para as aulas
RUN pip install --no-cache-dir \
    "fastapi[standard]" \
    sqlalchemy \
    pydantic-settings \
    alembic \
    requests \
    beautifulsoup4 \
    gspread \
    google-auth \
    python-dotenv

EXPOSE 8000
CMD ["python", "-m", "uvicorn", "fast_zero.app:app", "--host", "0.0.0.0", "--port", "8000", "--proxy-headers"]