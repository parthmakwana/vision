from flask import Flask, render_template,request,redirect,jsonify, templating
from flask_mysqldb import MySQL
import yaml
from flask_cors import CORS
import json
# import pickle 
# import glob
# import numpy
# #loading models
# fin=glob.glob("models/model_efficacy-Copy1.pkl")
# model_efficacy =pickle.load(open('models/model_stage.pkl', 'rb'))
# #model_stage =pickle.load(open('/models/model_stage.pkl', 'rb'))

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


@app.route('/read/login',methods=['POST'])
def loginUser():
    print('inside LOGIN')


    if request.method=='POST':
    #fetch form data

        data=request.get_json()
        print("Hellllloooooooooo",data)

        userDetails = request.get_json(force=True)
        nameID = userDetails['name']
        userPassword = userDetails['password']
        print(nameID)
        print('--------------------------------------------------------------------------------------------')

        cur = mysql.connection.cursor()
        count = cur.execute("Select * from login WHERE UPIN = %s and password=%s",(nameID,userPassword))
        print(type(count))
        if(count>0):
        
            json_data=dict()
            print("qwr")
            #json_data.append(dict(zip(("status",count))))
            json_data["status"]=(True)
            sql= "Select username from login WHERE UPIN = %s and password=%s"
            cur.execute(sql,(nameID,userPassword))
            username= cur.fetchone()
            #json_data.append(dict(zip(("userName",username))))
            json_data["userName"]=username[0]
            print(json_data)

          
           
            print(json_data)
            return jsonify(json_data)
        else:
            print("In")
            json_data=dict()
            json_data["status"]=(False)
            json_data["userName"]=""
            
            return jsonify(json_data)


   

@app.route('/read/patient_history',methods=['POST'])
def patientHistory():
    print('qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq')


    if request.method=='POST':

        userDetails = request.get_json(force=True)
        patientID = userDetails['id']
        
        print(patientID)
        print('--------------------------------------------------------------------------------------------')

        sql= "Select * from patient_history WHERE id = {0}".format(patientID)

        cur = mysql.connection.cursor()
        count = cur.execute(sql)
        print(type(count))
        if(count>0):
        
            row_headers=[x[0] for x in cur.description] #this will extract row headers
            rv = cur.fetchall()

            print(rv)
            print('--------------------------------------------------------------------------------------------')
            json_data=[]
            for result in rv:

                json_data.append(dict(zip(row_headers,result)))

            print('--------------------------------------------------------------------------------------------')
            print(json_data)
        return jsonify(json_data)


   
       

if __name__ == '__main__':
    app.run(debug=True)
