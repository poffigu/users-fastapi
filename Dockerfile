FROM python:3.12.1-slim-bookworm

RUN apt-get update && apt-get install -y gcc libpq-dev && apt-get clean && rm -rf /var/cache/apt/*

ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1 PYTHONIOENCODING=utf-8

COPY requirements/ /tmp/requirements

RUN pip install -U pip && pip install --no-cache-dir -r /tmp/requirements/dev.txt

COPY . /app

ENV PATH "$PATH:/app/scripts"

WORKDIR /app

CMD ["./scripts/start-dev.sh"]
