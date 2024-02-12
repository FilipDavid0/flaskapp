from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "Main page"

@app.route('/test')
def test():
    return "New page"

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8000)

