from flask import Flask, render_template,request,redirect,jsonify
from flask_mysqldb import MySQL
import yaml
from flask_cors import CORS
import json

app = Flask(__name__)
CORS(app)
#Configuration db
db = yaml.load(open ('db.yaml'))
app.config['MYSQL_HOST'] = db['mysql_host']
app.config['MYSQL_USER'] = db['mysql_user']
app.config['MYSQL_PASSWORD'] = db['mysql_password']
app.config['MYSQL_DB'] = db['mysql_db']

mysql = MySQL(app)

@app.route('/read/patientData')
def patientData():
    
    cur = mysql.connection.cursor()

    resultValue = cur.execute("SELECT * from patient_data")

    if resultValue > 0:
        #userDetails = cur.fetchall()

        row_headers=[x[0] for x in cur.description] #this will extract row headers
        rv = cur.fetchall()
        json_data=[]
        for result in rv:
                json_data.append(dict(zip(row_headers,result)))
    return jsonify(json_data)

@app.route('/read/drugsData')
def drugsData():
    
    cur = mysql.connection.cursor()

    resultValue = cur.execute("SELECT * from drugs_data")

    if resultValue > 0:
        #userDetails = cur.fetchall()

        row_headers=[x[0] for x in cur.description] #this will extract row headers
        rv = cur.fetchall()
        json_data=[]
        for result in rv:
                json_data.append(dict(zip(row_headers,result)))
    return jsonify(json_data)

if __name__ == '__main__':
    app.run(debug=True)
