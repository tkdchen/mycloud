from flask import Flask
from markupsafe import escape

app = Flask(__name__)


@app.route('/')
def index():
    return """<html>
        <head><title>My Cloud</title></head>
        <body>
            <h1>Introduction</h1>
            <p>A simple Web application.</p>
        </body>
     </html>
    """


@app.route('/<username>')
def hello(username):
    return f"""<html>
        <head><title>My Cloud</title></head>
        <body>
            <h1>Introduction</h1>
            <h2>Hello {escape(username)}</h2>
            <p>A simple Web application.</p>
        </body>
     </html>
    """
