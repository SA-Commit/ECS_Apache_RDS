from flask import Flask
import os
import pymysql

app = Flask(__name__)

@app.route("/")
def hello():
    db_host = os.getenv("DB_HOST")
    db_user = os.getenv("DB_USER")
    db_pass = os.getenv("DB_PASSWORD")
    db_name = os.getenv("DB_NAME")

    conn = pymysql.connect(host=db_host, user=db_user, password=db_pass, database=db_name)
    return "Connected to RDS!"

if __name__ == "__main__":
    app.run(host="0.0.0.0")
