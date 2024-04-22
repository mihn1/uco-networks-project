import json
import os
import psycopg2
from flask import Flask

app = Flask(__name__)
            
def get_db_connection():
    connection = psycopg2.connect(
            dbname=os.environ.get('POSTGRES_NAME'),
            user=os.environ.get('POSTGRES_USER'),
            password=os.environ.get('POSTGRES_PASSWORD'),
            host=os.environ.get('POSTGRES_HOST'),
            port=5432
        )
    return connection

@app.route('/')
def hello():
    return 'Hello World!.\n'

@app.route('/db')
def connect():
    res = ''
    try:
        connection = get_db_connection()
        cursor = connection.cursor()
        res = "Connected to database successfully!<br>"
        cursor.execute('SELECT * FROM my_user;')
        users = cursor.fetchall()
        for u in users:
            res += f'{json.dumps(u, default=str)}<br>'
            
    except psycopg2.Error as e:
        res = "Unable to connect to the database:" + e.pgerror
    finally:
        if cursor: cursor.close()
        if connection: connection.close()
    
    return res