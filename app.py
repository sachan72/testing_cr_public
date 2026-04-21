from flask import Flask

appl = Flask(__name__)

@appl.route("/")
def home():
    return "Hello World"

if __name__ == "__main__":
    appl.run(host="0.0.0.0", port=8080)
