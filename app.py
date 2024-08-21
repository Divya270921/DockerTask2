from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return """
    <html>
    <head><title>About me</title></head>
    <body>
    <h1>Basic Details</h1>
    <p>Hello! I am an example web application.</p>
    <p>Hosted on AWS EC2 using Docker.</p>
    </body>
    </html>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

