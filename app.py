from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Flask Dockerized - 1<br> Flask Dockerized - 2 <br>Flask Dockerized - 3'

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
