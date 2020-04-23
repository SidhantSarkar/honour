from flask import Flask, jsonify
import API

app = Flask(__name__)

api_bp = API.api

app.register_blueprint(api_bp)

# registering api endpoints
# app.register_blueprint(api_bp, url_prefix='api')

@app.route('/')
def index():
    # for i in app.blueprints['api']:
    #     print(i)
    return jsonify('TEST')

if __name__ == "__main__":
    app.run(debug=True)
