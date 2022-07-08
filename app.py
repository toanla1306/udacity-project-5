from flask import Flask, redirect, render_template, request, jsonify,redirect, session, url_for
import os
from flask import send_from_directory
app = Flask(__name__)

@app.route('/', methods=['GET','POST'])
def hello():
    name = "Hello world 1"
    return render_template('index.html', name=name)
@app.route('/favicon.ico')
def favicon():
    return send_from_directory(os.path.join(app.root_path, 'static'),
                               'favicon.ico', mimetype='image/vnd.microsoft.icon')

app.run(host='0.0.0.0', port='5000', debug=True)