from flask import Flask, render_template,request,redirect,jsonify, templating
from flask_mysqldb import MySQL
import yaml
from flask_cors import CORS
import json
import pandas as pd
import pickle 
# import glob
# import numpy
# #loading models
# fin=glob.glob("models/model_efficacy-Copy1.pkl")
model_efficacy =pickle.load(open('model_efficacy.pkl', 'rb'))
model_stage =pickle.load(open('model_stage.pkl', 'rb'))

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

    resultValue = cur.execute("SELECT * from flat_drug_data")

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
 

    if request.method=='POST':

        userDetails = request.get_json(force=True)
        patientID = userDetails['id']

        sql= "Select * from patient_history WHERE id = {0}".format(patientID)

        cur = mysql.connection.cursor()
        count = cur.execute(sql)
        print(type(count))
        if(count>0):
        
            row_headers=[x[0] for x in cur.description] #this will extract row headers
            rv = cur.fetchall()

            print(rv)
           
            json_data=[]
            for result in rv:

                json_data.append(dict(zip(row_headers,result)))

            
            print(json_data)
        return jsonify(json_data)

@app.route('/read/drug_efficacy',methods=['POST'])
def efficacy_predictions():

    if request.method=='POST':

        drugDetails = request.get_json(force=True)
        patientID = drugDetails['patientID']
        drugName = drugDetails['drugName']
    
        cur = mysql.connection.cursor()
        sql= "Select * from efficacy_prediction_modelling WHERE id = {0}".format(patientID)
        cur.execute(sql)
        row_headers=[x[0] for x in cur.description] #this will extract row headers
        rv = cur.fetchall()

        print('----------------------------------------------------------------------')

        print(rv)
        df = pd.DataFrame(rv)
        df.columns = [ 'index','height', 'weight', 'age', 'drinks', 'smokes', 'bp-systolic',
'bp-diast', 'tumor_size', 'temperature', 'stage','Xaretzi', 'DXC_Drug', 'Kras_5', 'Imfinzi', 'ADE_2.5', 'Kras',
'DXC_Oral','double_lung_infection','id']
        df = df.loc[:,'height':'double_lung_infection']
        df[drugName] = 1

       
        print(model_efficacy.predict(df))
        json_efficacy=model_efficacy.predict(df)
        
       
        print(df)
    
        return (str(json_efficacy))

    #return True

@app.route('/read/patient_prediction',methods=['POST'])
def stage_prediction():
    
     if request.method=='POST':

        drugDetails = request.get_json(force=True)
        patientID = drugDetails['id']
        
    
        cur = mysql.connection.cursor()
        sql= "Select * from stage_prediction_data WHERE id = {0}".format(patientID)
        cur.execute(sql)
        row_headers=[x[0] for x in cur.description] #this will extract row headers
        rv = cur.fetchall()

        print('----------------------------------------------------------------------')

        print(rv)
        df = pd.DataFrame(rv)
        df.columns = ['height', 'weight',
'age', 'drinks', 'smokes', 'bp-systolic', 'bp-diast', 'tumor_size',
'temperature', 'stage' ,'Xaretzi', 'DXC_Drug', 'Kras_5', 'Imfinzi', 'ADE_2.5', 'Kras',
'DXC_Oral' ,'double_lung_infection','id']
        df = df.loc[:,'height':'double_lung_infection']
        
        print('------------------fjhwufh[owbfowjbrgfljgbksfjhbg----------------------------------------------------')
        print(model_stage.predict(df))
        
        cur = mysql.connection.cursor()
        sql1= "Select * from stage_prediction_data_original WHERE id = {0}".format(patientID)
        cur.execute(sql1)
        #row_headers=[x[0] for x in cur.description] #this will extract row headers
        rv1 = cur.fetchall()
        df1 = pd.DataFrame(rv1)
        df1.columns = ['name', 'city', 'phone-number', 'date', 'ssn', 'id', 'height', 'weight',
       'age', 'drinks', 'smokes', 'bp-systolic', 'bp-diast', 'tumor_size',
       'temperature', 'stage', 'drug', 'double_lung_infection',
       'predicted_stage']
        print('------------------fjhwufh[owbfowjbrgfljgbksfjhbg----------------------------------------------------')
        #json={'Prediction':str(model_stage.predict(df)),'Stage':str(df['stage']),'Drug':str(df1['drug'])}
        json_data=dict()
        prediction=model_stage.predict(df)
        json_data["Prediction"]=str(prediction[0])
        json_data["Stage"]=df.iloc[0]['stage']
        json_data["Drug"]=str(df1.iloc[0]['drug'])
        print("dcscds",str(df1.iloc[0]['drug']))
        
        print(type(prediction))
        
       
        
        return jsonify(json_data)
        
        
@app.route('/create/createAppointment',methods=['POST'])
def createAppointment():
    
     if request.method=='POST':

        drugDetails = request.get_json(force=True)
        patient_id = drugDetails['patient_id']
        doctor_id = drugDetails['doctor_id']
        date_time = drugDetails['date_time']
        
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO appointment_details(patient_id,doctor_id,date_time) VALUES (%s ,%s,%s)",(patient_id,doctor_id,date_time))
        mysql.connection.commit()
        cur.close()
        
        status={'status':True}
        
    
        
        
       
        
        return jsonify(status) 
     else:
        status={'status':False}
        
        return jsonify(status)
        
    
        
    #return True
    
        
@app.route('/read/getAppointment',methods=['POST'])
def getAppointment():
    
     if request.method=='POST':

        appointmentDetails = request.get_json(force=True)
        
        doctor_id = appointmentDetails['doctor_id']
        date_time = appointmentDetails['date_time']
        print('------------------fjhwufh[owbfowjbrgfljgbksfjhbg----------------------------------------------------')
               
        print(date_time)
        
        
        
        cur = mysql.connection.cursor()
        
        sql="  select appointment_details.id , patient_data.name, appointment_details.date_time, appointment_details.notes from appointment_details inner join patient_data on appointment_details.patient_id = patient_data.id where date_time between  %s and %s and doctor_id =%s"
        
#         sql="  select patient_data.name, appointment_details.date_time, appointment_details.notes from appointment_details inner join patient_data on appointment_details.patient_id = patient_data.id where doctor_id =%s"

        resultValue = cur.execute(sql,(date_time+' 00:00:00',date_time+ ' 23:59:59',doctor_id))

        if resultValue > 0:
            #userDetails = cur.fetchall()

            row_headers=[x[0] for x in cur.description] #this will extract row headers
            rv = cur.fetchall()


            json_data=[]
            for result in rv:
                    json_data.append(dict(zip(row_headers,result)))
                    
            print('------------------fjhwufh[owbfowjbrgfljgbksfjhbg----------------------------------------------------')
                    
            print(json_data)
            return jsonify(json_data)
        else:
            json_data=[]
            return jsonify(json_data)
            
                
@app.route('/update/saveNotes',methods=['POST'])
def saveNotes():
    
     if request.method=='POST':

        drugDetails = request.get_json(force=True)
        row_id = drugDetails['id']
        notes = drugDetails['notes']
        
        print('----------------------------------------------------------------------')
                    
        print(row_id,notes)
   
        
        cur = mysql.connection.cursor()
        sql="UPDATE appointment_details SET notes = %s WHERE id = %s"
        cur.execute(sql,(notes,row_id))
        mysql.connection.commit()
        cur.close()
        
        status={'status':True}
        
    
        
        
       
        
        return jsonify(status) 
     else:
        status={'status':False}
        
        return jsonify(status)
        
    
        
    #return True                
                

@app.route('/delete/deleteAppointment',methods=['POST'])
def deleteAppointment():
    
     if request.method=='POST':

        drugDetails = request.get_json(force=True)
        row_id = drugDetails['id']
       
        
        print('---------------vsdfvs-------------------------------------------------------')
                    
        print(row_id)
   
        
        cur = mysql.connection.cursor()
        sql="DELETE FROM appointment_details WHERE id = %s"
        cur.execute(sql,(row_id))
        mysql.connection.commit()
        cur.close()
        
        status={'status':True}
        
    
        
        
       
        
        return jsonify(status) 
     else:
        status={'status':False}
        
        return jsonify(status)
        
    
        
    #return True                
                

    
    
    

        
       

if __name__ == '__main__':
    app.run(debug=True)
