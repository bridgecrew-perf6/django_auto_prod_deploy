This project is an automated solution to deploy your django app

It will copy your django project into a container
From there, it will install your required packages ( from requirements.txt )


What you have to do :

Set the static root in your project settings.py file as :

STATIC_ROOT ='/static/'

Create a requirements.txt file into your django project directory (same directory as your manage.py file )

Update the entrypoint.sh script, so it knows where to look for the wsgi file


mv project/* inside_your_django_project_path




