# Python 3
sudo -H pip3 install virtualenv
sudo -H virtualenv env3 --python=python3
source env3/bin/activate

sudo -H pip install flask \
  connexion \
  Flask-SQLAlchemy \
  flask-marshmallow \
  marshmallow-sqlalchemy \
  marshmallow \
  swagger-ui-bundle \
  Flask-MySQL \
  Flask-SQLAlchemy \
  PyMySQL \
  PyYAML \
  mysqlclient 

sudo -H pip3 install --upgrade setuptools

# Python 2
sudo -H pip install virtualenv
sudo -H virtualenv env2 --python=python
source env2/bin/activate

sudo -H pip install flask \
  connexion \
  Flask-SQLAlchemy \
  flask-marshmallow \
  marshmallow-sqlalchemy \
  marshmallow \
  swagger-ui-bundle \
  Flask-MySQL \
  Flask-SQLAlchemy \
  PyMySQL \
  PyYAML \
  mysqlclient 

sudo -H pip install --upgrade setuptools
