# pip install flask
from flask import Flask, render_template, request

app = Flask(__name__)


@app.route("/")
def main_page():
    name = request.args.get("name", "world")
    return render_template("index.html", name=name)
