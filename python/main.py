from typing import List, Dict
from flask import Flask
import mysql.connector
import json
import os
from quotes.quotes import Quote

app = Flask(__name__)
my_quote = Quote()

@app.route('/')
def index() -> str:
    quotes = my_quote.get_quotes()
    print(quotes)
    quotes = my_quote.format_quotes(quotes)
    return json.dumps(quotes)

@app.after_request
def after_request(response):
    response.headers['Access-Control-Allow-Origin'] = "*"
    response.headers['Access-Control-Allow-Methods'] = 'GET,POST'
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type,Authorization'
    response.headers['Content-type'] = "application/json; charset=utf-8"
    
    return response 

if __name__ == '__main__':
    app.run(host='0.0.0.0')
