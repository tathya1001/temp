from flask import Flask, jsonify
import pickle

app = Flask(__name__)

# Load your .pkl file

@app.route('/')
def get_data():
    # Load the data from the .pkl file
    data = "Hello"
    # Return the data as JSON
    return jsonify(data)

@app.route('/api/data')
def get_data():
    # Load the data from the .pkl file
    data = "Hello"
    # Return the data as JSON
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True)
