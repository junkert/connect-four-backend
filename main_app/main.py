from flask import Flask

app = Flask(__name__)

@app.route('/create-user')
def create_user():
    return None

@app.route('/login')
def login():
    return None

@app.route('/')
def hello_world():
    return 'Hello World!'


if __name__ == '__main__':
    app.run()
