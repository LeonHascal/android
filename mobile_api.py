from flask import Flask, jsonify, request
import subprocess

app = Flask(__name__)

# A simple hardcoded key for basic local network security.
# In production, pass this via environment variables.
API_KEY = "mobile_node_key_2026"

def check_auth(req):
    """Utility function to verify the API key."""
    key = req.headers.get('X-API-Key')
    return key == API_KEY

@app.route('/api/status', methods=['GET'])
def get_status():
    """Public endpoint to check if the node is alive."""
    return jsonify({"status": "online", "device": "Termux Node"})

@app.route('/api/records', methods=['GET'])
def get_records():
    """Secure endpoint to serve JSON data."""
    if not check_auth(request):
        return jsonify({"error": "Unauthorized"}), 401
    
    # This data could easily be pulled from a local SQLite db or CSV
    mock_ledger_data = [
        {"id": 1, "client": "Smith", "status": "Hearing Scheduled"},
        {"id": 2, "client": "Doe", "status": "Pending Review"}
    ]
    return jsonify({"data": mock_ledger_data})

@app.route('/api/trigger-sync', methods=['POST'])
def trigger_script():
    """Secure endpoint to execute a shell script on the Android device."""
    if not check_auth(request):
        return jsonify({"error": "Unauthorized"}), 401

    try:
        # Example: Running a quick bash command. 
        # You could point this to your custom Fish functions or Bash scripts.
        result = subprocess.run(
            ['echo', 'Sync process initiated...'], 
            capture_output=True, text=True, check=True
        )
        return jsonify({"status": "success", "output": result.stdout.strip()})
    except subprocess.CalledProcessError as e:
        return jsonify({"status": "error", "message": str(e)}), 500

if __name__ == '__main__':
    # Binding to 0.0.0.0 exposes the API to the local network
    app.run(host='0.0.0.0', port=8080)
