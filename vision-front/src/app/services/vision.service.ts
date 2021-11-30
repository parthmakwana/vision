import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { LocalStorageService } from './local-storage.service';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class VisionService {

  constructor(private http: HttpClient,
    private localStorageService: LocalStorageService,
    private router: Router) { }

  getPatientData() {
    return this.http.get('http://localhost:5000/read/patientData');
  }

  getAPI() {
    return this.http.get('http://localhost:5000/read/patientData');
  }

  getDrugData() {
    return this.http.get('http://localhost:5000/read/drugsData');
  }

  validateLoggedInSession() {
    if (!this.localStorageService.isLoggedIn()) {
      this.router.navigate(['login']);
    }
  }

  checkLogin(body) {

    return this.http.post('http://localhost:5000/read/login',body);
  }

  getPatientHistory(body) {

    return this.http.post('http://localhost:5000/read/patient_history',body);
  }

}
