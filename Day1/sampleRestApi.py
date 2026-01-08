from flask import Flask, jsonify, request

app = Flask(__name__)

# In-memory data store
users = [
    {"id": 1, "name": "Alice", "role": "admin"},
    {"id": 2, "name": "Bob", "role": "user"},
    {"id": 3, "name": "Charlie", "role": "user"}
]

# Health check endpoint
@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "UP"}), 200


# Get all users
@app.route("/users", methods=["GET"])
def get_users():
    return jsonify(users), 200


# Get user by ID
@app.route("/users/<int:user_id>", methods=["GET"])
def get_user(user_id):
    for user in users:
        if user["id"] == user_id:
            return jsonify(user), 200
    return jsonify({"error": "User not found"}), 404


# Create a new user
@app.route("/users", methods=["POST"])
def create_user():
    data = request.get_json()

    if not data or "name" not in data or "role" not in data:
        return jsonify({"error": "Invalid payload"}), 400

    new_id = max(user["id"] for user in users) + 1
    new_user = {
        "id": new_id,
        "name": data["name"],
        "role": data["role"]
    }

    users.append(new_user)
    return jsonify(new_user), 201


# Delete a user
@app.route("/users/<int:user_id>", methods=["DELETE"])
def delete_user(user_id):
    global users
    users = [user for user in users if user["id"] != user_id]
    return jsonify({"message": f"User {user_id} deleted"}), 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)
