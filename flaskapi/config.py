import os
import connexion
import pymysql
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow

basedir = os.path.abspath(os.path.dirname(__file__))
db_user = os.environ.get('db_user')
db_password = os.environ.get('db_password')
db_address = os.environ.get('db_address')
db_port = os.environ.get('db_port')
db_database = os.environ.get('db_database')

# Create the connexion application instance
connex_app = connexion.App(__name__, specification_dir=basedir)

# Get the underlying Flask app instance
app = connex_app.app

# Build the Sqlite ULR for SqlAlchemy
# sql_url = "sqlite:////" + os.path.join(basedir, "people.db")

# app = Flask(__name__)

sql_url = "mysql+pymysql://{}:{}@{}:{}/{}".format(db_user,db_password,db_address,db_port,db_database)
# sql_url = 'mysql+pymysql://flask:ComplexPassw0rd!@localhost:3306/people'

# Configure the SqlAlchemy part of the app instance
app.config["SQLALCHEMY_ECHO"] = True
app.config["SQLALCHEMY_DATABASE_URI"] = sql_url
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

# Create the SqlAlchemy db instance
db = SQLAlchemy(app)

# Initialize Marshmallow
ma = Marshmallow(app)


# app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://{DB_USERNAME}:{DB_PASSWORD}@localhost:3306/{DB_NAME}'
