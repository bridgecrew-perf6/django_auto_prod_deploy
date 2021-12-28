FROM python:alpine
LABEL maintainer="Rol DEL"

ENV PYTHONUNBUFFERED 1

RUN mkdir /app

WORKDIR /app

# RUN apt update 

COPY . /app

#python -m venv pyenv
# pyenv/bin/pip install --upgrade pip 
# pyenv/bin/pip install requirements.txt 

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ENTRYPOINT ["sh", "entrypoint.sh"]
