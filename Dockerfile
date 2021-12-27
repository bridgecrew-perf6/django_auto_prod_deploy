FROM python:alpine
LABEL maintainer="Roland DELATTRE"

ENV PYTHONUNBUFFERED 1

RUN mkdir /app

WORKDIR /app

# RUN apt update 

COPY . /app

#python -m venv pyenv
# pyenv/bin/pip install --upgrade pip 

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ENTRYPOINT ["sh", "entrypoint.sh"]
