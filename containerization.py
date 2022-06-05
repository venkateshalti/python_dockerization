from flask import Flask, render_template

app = Flask(__name__)

@app.route('/', methods=['POST', 'GET'])
def home():
    return render_template('index.html')

if __name__ == "__main__":
    app.run(debug=False, host='0.0.0.0', port=5000)  # we use 0.0.0.0 instead of 127.0.0.1
# this is because 0.0.0.0 listens to requests like 127.0.0.1 which comes from local browser instead of docker
