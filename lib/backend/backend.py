from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/contact', methods=['POST'])
def contact():
    data = request.form
    print(f'Received data: {data}')  # This will print the whole form data
    
    first_name = data['first_name']
    last_name = data['last_name']
    email = data['email']
    message = data['message']
    
    # Here you can add logic to process the form data, like sending an email or saving to a database
    print(f'New message from {first_name} {last_name} ({email}): {message}')
    
    return jsonify({'status': 'success'}), 200

if __name__ == '__main__':
    app.run(debug=True)
