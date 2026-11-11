FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Создаем пользователя appuser и переключаемся на него
RUN adduser --disabled-password --gecos "" appuser
USER appuser

EXPOSE 5000

CMD ["python", "app.py"]