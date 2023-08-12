from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h3>Hello, I'am Sanh Tuan. This is Udacity Capstone Project-Cloud DevOps Engineer!</h3>"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True) 