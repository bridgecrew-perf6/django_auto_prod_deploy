# Automated Django production deployment ft docker-compose :octopus:
&nbsp;
<hr>

## 🕕 Deploy your django project in a production environment in less than 3 minutes ! 🕡

<hr>

&nbsp;
&nbsp;
&nbsp;
## This repo will :

### - Create a django_gunicorn container around your project
### - Install your dependencies (pip)
### - Create volumes to share static files and a unix sock between containers
### - Create an nginx container, to serve your static files or reverse proxy to your gunicorn server

<hr>

&nbsp;
&nbsp;
&nbsp;
&nbsp;

### :rocket: Setup instructions : :rocket:

&nbsp;
&nbsp;

- **settings.py :** update ( or add if missing ) the static files root path field as follows :

> STATIC_ROOT ='/static/'

&nbsp;

- **requirements.txt :** Make sure you update or create a requirements.txt file in your project directory ( the directory also containing the manage.py file ). Your requirements.txt file should list **at least** django and gunicorn 

```
#requirements.txt

django 
gunicorn
# Pin versions as you need
```
&nbsp;

- **Update the entrypoint.sh :** so it knows where to look for the wsgi file

&nbsp;
&nbsp;

- **Move this repo content** into your django project directory
```script
mv django_auto_prod_deploy/* <your_django_project_path>

```


Further developments for this repo

Increase security : 

- Set nginx server tokens default to off ?

- Smart way to expose server logs to manage fail2ban from host 

- Check for user privilege downgrade

refs :

https://mherman.org/
https://github.com/testdrivenio/docker-python-devs/blob/master/web/04_user/Dockerfile

Check out set up adding postgres :
https://pawamoy.github.io/posts/docker-compose-django-postgres-nginx/
