from typing import List, Dict
import mysql.connector
import json
import os

class Quote:
  def __init__(self):
    self.config = {
      'user': os.environ['MYSQL_USER'],
      'password': os.environ['MYSQL_PWD'],
      'host': os.environ['MYSQL_URL'],
      'port': os.environ['MYSQL_PORT'],
      'database': os.environ['MYSQL_DATABASE']
      }
    
  def get_quotes(self) -> List[Dict]:
    # config = {
    #     'user': ,
    #     'password': os.environ['MYSQL_PWD'],
    #     'host': os.environ['MYSQL_URL'],
    #     'port': os.environ['MYSQL_PORT'],
    #     'database': os.environ['MYSQL_DATABASE']
    # }
    connection = mysql.connector.connect(**self.config)
    cursor = connection.cursor()
    cursor.execute('SELECT author, content FROM cards')
    connection.close()
    results = cursor.fetchall()
    cursor.close()
    return results
  
  def format_quotes(self, quotes):
    return [{"quote": content + " - " + author} for (author, content) in quotes]
