from flask import Flask, Blueprint, jsonify
import mysql.connector as mysql

import config  # config
import API.Stakeholder as Stakeholder  # for Stakeholder Functions and cursor setting

# Intitialise DB Engine Connection
my_db = mysql.connect( **config.db_setting )

# Initialise Connection with Class Wrappers
Stakeholder.cursor = my_db.cursor()

api = Blueprint('api', __name__)

# DO NOT CHANGE STRUCTURE in this file
# Adding Routes for stakeholders
from API.Routes.clients import *
from API.Routes.lawyers import *
from API.Routes.judeges import *
from API.Routes.firms import *
from API.Routes.officers import *


    