import numpy as np

from flask import Flask, request, jsonify
from flask_cors import CORS
from flask import render_template
from flask import g
from werkzeug.local import LocalProxy
import joblib
import json

# FIXME: leer de parámetro
MODEL_FILENAME = "/models/production.pkl"

def get_model():
    if 'model' not in g:
        g.model = joblib.load(MODEL_FILENAME)
    return g.model

app = Flask(__name__)
cors = CORS(app, resources={r"*": {"origins": "*"}})

@app.route('/test')
def test():
    model = LocalProxy(get_model)
    sample_feats = np.array([[ 1.86822575,  1.36307704, -1.99493428,  4.17351574,  1.23975095,
        -0.74618646,  0.57273053, -0.13123484, -1.55183852,  0.22884943,
         1.70189471,  0.14462239,  0.10408768, -2.95416672, -1.37412193,
         1.88941746,  1.71451074,  1.10465991, -1.59744021, -0.1722165 ,
        -0.30100148, -0.81897228,  0.20681231, -0.26368303, -0.1149581 ,
        -0.24067212, -0.00662945,  0.01725773,  3.14     ]])
    #print(sample_feats.shape)
    response = { "prediction_result": float(model.predict(sample_feats)[0]) }
    return response

@app.route('/predict', methods=['POST'])
def predict():
    model = LocalProxy(get_model)
    json_data = json.loads(request.get_json())
    print(json_data)
    sample_feats = np.array(json_data["features"]).reshape(1, -1)
    print(sample_feats)
    response = { "prediction_result": float(model.predict(sample_feats)[0]) }
    return response

@app.route("/")
def hello():
    return "Sirviendo modelo: " + MODEL_FILENAME

if __name__ == "__main__":
    # Only for debugging while developing
    app.run(host='0.0.0.0', debug=True, port=5000)    
