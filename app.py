from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "🚀 Flask App running on Coolify with a custom domain!"
