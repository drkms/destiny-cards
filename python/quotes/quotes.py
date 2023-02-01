from typing import List, Dict
import mysql.connector
import json
import os
import sys

class Quote:
  def __init__(self):
    if "pytest" in sys.modules:
      self.config = {
        'user': "root",
        'password': "root",
        'host': "127.0.0.1",
        'port': "3306",
        'database': "cards"
      }
    else:
      self.config = {
        'user': os.environ.get('MYSQL_USER'),
        'password': os.environ.get('MYSQL_PWD'),
        'host': os.environ.get('MYSQL_URL'),
        'port': os.environ.get('MYSQL_PORT'),
        'database': os.environ.get('MYSQL_DATABASE')
      }
    
  def get_quotes(self) -> List[Dict]:
    connection = mysql.connector.connect(**self.config)
    cursor = connection.cursor()
    cursor.execute('SELECT author, content FROM cards')
    results = cursor.fetchall()
    connection.close()
    cursor.close()
    return results
  
  def format_quotes(self, quotes):
    return [{"quote": content + " - " + author} for (author, content) in quotes]
