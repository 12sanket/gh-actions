from flask import Flask, jsonify
 
# Create a Flask application instance
app = Flask(__name__)
 
# Define a route and a view function
@app.route("/")
def hello_world():
    return jsonify({"Hello all from Sanket"})
 
# Run the application if the script is executed directly
if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
