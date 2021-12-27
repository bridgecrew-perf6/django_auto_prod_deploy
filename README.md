# Automated Django production deployment ft docker-compose :octopus:

## This repo will :

### - Create a django_gunicorn container arround your project
### - install your dependencies (pip)
### - create volumes to share static files and a unix socket to connect between the containers
### - create an nginx container to serve your static files or reverse proxy to your gunicron server as needed


<hr>

!!! Work in progress !!! ⬇️


### Setup instructions :

Set the static root in your project settings.py file as :

STATIC_ROOT ='/static/'

Create a requirements.txt file into your django project directory (same directory as your manage.py file )

Update the entrypoint.sh script, so it knows where to look for the wsgi file


mv project/* inside_your_django_project_path



Additional tasks to be completd :

_ Set nginx server tokens off ?
_ Smart way to share server logs with host to secure from host fail2ban


_Check for user privilege downgrade
https://mherman.org/
https://github.com/testdrivenio/docker-python-devs/blob/master/web/04_user/Dockerfile

Check out set up adding postgres :
https://pawamoy.github.io/posts/docker-compose-django-postgres-nginx/


Remove default project from git repo

Add instructions to adpat to new or existing porject

Change repo name, django_auto_prod_deploy ?



