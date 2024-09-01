from flask import Flask, jsonify
import pickle

app = Flask(__name__)

reduced_data = pickle.load(open('reduced_movies.pkl', 'rb'))

@app.route('/api/data', methods=['GET'])
def get_data():
    return jsonify(reduced_data)

@app.route("/api/<string:movie>")
def predict(movie):
    

    # recommended_movies = []
    
    # for recommended_movie in movie_data['recommendations']:
    #     recommended_movies.append(recommended_movie['movie_id'])
        
    return jsonify(reduced_data[0])


if __name__ == '__main__':
    app.run(debug=True)
