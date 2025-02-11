FROM python:3.9.5-slim-buster

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./django_gunicorn_nginx /app

WORKDIR /app

COPY ./entrypoint.sh /
ENTRYPOINT ["sh","/entrypoint.sh"]
