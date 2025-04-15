FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 👇 Add this to fix ModuleNotFoundError
ENV PYTHONPATH="${PYTHONPATH}:/app"

CMD ["python", "app/main.py"]
