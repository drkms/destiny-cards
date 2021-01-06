from typing import List, Dict
from flask import Flask
import mysql.connector
import json
import os

app = Flask(__name__)

"""
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'destiny_cards'
"""

def favorite_colors() -> List[Dict]:
    config = {
        'user': os.environ['MYSQL_USER'],
        'password': os.environ['MYSQL_PWD'],
        'host': os.environ['MYSQL_URL'],
        'port': os.environ['MYSQL_PORT'],
        'database': os.environ['MYSQL_DATABASE']
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT author, content FROM cards')
    results = [{"quote": content + " - " + author} for (author, content) in cursor]
    cursor.close()
    connection.close()

    return results


@app.route('/')
def index() -> str:
    return json.dumps(favorite_colors())

@app.after_request                                                                                              
def after_request(response):                                                                                    
    response.headers['Access-Control-Allow-Origin'] = "*"                                                       
    response.headers['Access-Control-Allow-Methods'] = 'GET,POST'                                               
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type,Authorization'                             
    return response 

if __name__ == '__main__':
    app.run(host='0.0.0.0')
