import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class VisionService {

  constructor(private http: HttpClient) { }

  getPatientData() {
    return this.http.get('http://localhost:5000/read/patientData');
  }

  getAPI() {
    return this.http.get('http://localhost:5000/read/patientData');
  }

  getDrugData() {
    return this.http.get('http://localhost:5000/read/drugsData');
  }
}
