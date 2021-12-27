This project is an automated solution to deploy your django app

It will copy your django project into a container
From there, it will install your required packages ( from requirements.txt )


What you have to do :

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



