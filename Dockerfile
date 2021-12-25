FROM python:slim

RUN mkdir -p /home/user/src
WORKDIR /home/user/src

# RUN apt update && apt autoremove && apt clean

COPY . /home/user/src

RUN pip install --upgrade pip

RUN pip install -r requirements.txt


EXPOSE 7568

#CMD ["gunicorn","--bind",":8000","config.wsgi"]
ENTRYPOINT ["sh", "entrypoint.sh"]
