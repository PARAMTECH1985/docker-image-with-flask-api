from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return jsonify(message="Hello from Dockerized Flask API!")

if __name__ == '__main__':
    # Setting host to 0.0.0.0 is required for container access
    app.run(host='0.0.0.0', port=5000)

