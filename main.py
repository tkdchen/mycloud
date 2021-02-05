from flask import Flask

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
