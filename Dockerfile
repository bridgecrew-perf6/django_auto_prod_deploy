FROM python:slim

RUN mkdir -p /home/user/src

WORKDIR /home/user/src

# RUN apt update 

COPY . /home/user/src

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ENTRYPOINT ["sh", "entrypoint.sh"]
