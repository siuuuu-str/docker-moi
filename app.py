from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Docker!"

if __name__ == '__main__':
    # Слушаем на всех интерфейсах, чтобы Docker мог пробросить порт
    app.run(host='0.0.0.0', port=5000)