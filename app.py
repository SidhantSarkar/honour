from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy

from API import api
from config import config
import API.Stakeholder as Stakeholder  # for Stakeholder Functions and cursor setting

app = Flask(__name__)
app.config.from_object(config)

# Intitialise DB Engine Connection
my_db = SQLAlchemy(session_options={'autocommit': True})
my_db.init_app(app)

# Initialise Connection with Class Wrappers
Stakeholder.cursor = my_db.get_engine(app)

api_bp = api

app.register_blueprint(api_bp)

@app.route('/')
def index():
    # for i in app.blueprints['api']:
    #     print(i)
    return jsonify('TEST')

if __name__ == "__main__":
    app.run(debug=True)
