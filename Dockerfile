FROM python:slim

RUN mkdir -p /home/user/src
WORKDIR /home/user/src

RUN apt update && apt upgrade

RUN apt autoremove && apt clean

COPY . /home/user/src

RUN pip install -r requirements.txt

#Manually install pip dependencies
#RUN pip install django gunicorn

#Used  to copy files from host . to container workdir directory

EXPOSE 80

CMD ["gunicorn","--bind",":80","config.wsgi"]
