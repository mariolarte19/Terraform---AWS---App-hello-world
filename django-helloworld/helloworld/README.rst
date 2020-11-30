=================
django-helloworld
=================

Una vez tenemos la instancia de ec2 la configuramos 

Configuracion
============



::

  $ sudo apt update

Comandos para desplegar aplicacion 

::

  $ sudo apt install python3-dev python3-pip python3-virtualenv sqlitebrowser
  $ sudo pip3 install virtualenv
  $ virtualenv myprojectenv
  $ git clone "https://github.com/<username>/<repository name>.git"
  $ source myprojectenv/bin/activate
  $ sudo pip install -r requirements.txt
  $ pip install django
  $ python manage.py makemigrations
  $ python manage.py migrate
  $ python manage.py collectstatic
  $ python manage.py runserver 0.0.0.0:8000
