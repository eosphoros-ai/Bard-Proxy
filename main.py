import os
from flask import Flask, request
import bardapi
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

token = os.getenv("BARD_PROXY_API_KEY", "Not config")


@app.route('/api/openai/v1/chat/completions', methods=['POST'])
def do_request():
    print(f'token={token}')
    input_text = request.json.get('input')
    response = bardapi.core.Bard(token).get_answer(input_text)
    if response and response.get('content'):
        return response['content']
    return f"bard request error: response={str(response)}"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8671)