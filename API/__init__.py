from flask import Blueprint

api = Blueprint('api', __name__)

# DO NOT CHANGE STRUCTURE in this file
# Adding Routes for stakeholders
from API.Routes.clients import *
from API.Routes.lawyers import *
from API.Routes.judeges import *
from API.Routes.firms import *
from API.Routes.officers import *


    