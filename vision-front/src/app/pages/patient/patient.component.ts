import { DatePipe } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Patient } from 'src/app/models/patient.model';
import { LocalStorageService } from 'src/app/services/local-storage.service';
import { VisionService } from 'src/app/services/vision.service';
import { StringLiteralLike } from 'typescript';

@Component({
  selector: 'app-patient',
  templateUrl: './patient.component.html',
  styleUrls: ['./patient.component.css']
})
export class PatientComponent implements OnInit {
  patientsData: Patient[] = [];
  historyData: any[] = [];

  //patientsData: Patient[] = res;


  constructor(private visionService: VisionService,
    private modalService: NgbModal,
    private localStorageService: LocalStorageService) {
    this.visionService.validateLoggedInSession();
  }



  selectedRow: Patient = new Patient();
  predictionData: any = { prediction: 4, probability: "67%" };
  page: number = 1;
  pageSize: number = 5;
  public focus;
  selectedDate: Date = new Date();
  loggedInID: any;
  loggedInName: any;
  pipe = new DatePipe('en-US');
  formattedDatetime: string;
  naError: boolean = false;
  futureError: boolean = false;
  successModal: boolean = false;
  masterData: Patient[] = [];
  searchKeyword: string = "";

  ngOnInit(): void {
    this.loggedInID = this.localStorageService.getLoggedInID();
    this.loggedInName = this.localStorageService.getLoggedInName();
    this.getPatientData();
  }

  getPatientData() {
    this.visionService.getPatientData().subscribe((res: any) => {
      this.masterData = res;
      console.log("response from get api ", res);
      this.patientsData = JSON.parse(JSON.stringify(res));
    })
  }

  getPatientHistory(body) {
    this.visionService.getPatientHistory(body).subscribe((res: any) => {

      this.historyData = res

      console.log("response from login cdcvzd ", this.historyData);
    })

  }

  getPrediction(body) {
    this.visionService.getPrediction(body).subscribe((res: any) => {

      this.predictionData = res

      console.log("response from login cdcvzd ", this.historyData);
    })


  }
  viewPrediction(content, rowData: Patient) {
    console.log(content);


    this.selectedRow = rowData;

    // call api to fetch history
    let body = { "id": rowData.id }
    this.getPrediction(JSON.stringify(body));
    console.log("response from patient history cdcvzd ", body);



    this.modalService.open(content, { centered: true });


  }

  searchData() {
    if (this.searchKeyword) {
      this.patientsData = [];
      let keys: any[] = Object.keys(this.masterData[0]);
      this.masterData.forEach(element => {
        let found = false;
        keys.forEach(key => {
          if (element[key].toString().toUpperCase().indexOf(this.searchKeyword.toUpperCase()) > -1) {
            found = true;
          }
        });
        if (found) {
          this.patientsData.push(element);
        }
      });
    } else {
      this.patientsData = JSON.parse(JSON.stringify(this.masterData));
    }
  }

  viewHistory(content, rowData: Patient) {
    this.historyData = [];
    console.log(content);
    this.selectedRow = rowData;
    // call api to fetch history
    let body = { "id": rowData.id }
    this.getPatientHistory(JSON.stringify(body));
    console.log("response from patient history cdcvzd ", body);
    this.modalService.open(content, {});
  }

  openAppointment(content, rowData: Patient) {
    this.selectedDate = new Date();
    this.successModal = false;
    this.selectedRow = rowData;
    this.modalService.open(content, { centered: true, size: 'lg' });
  }

  createAppointment() {
    this.naError = false;
    this.futureError = false;
    if (this.selectedDate <= new Date()) {
      this.futureError = true;
    } else {
      this.formattedDatetime = this.pipe.transform(this.selectedDate, 'yyyy-MM-dd HH:mm:ss');
      // use formatted date time for your backend to save data
      // use selectedRow to get patient id and use loggedInID to get doctor ID
      // call setup api. if false then make naError true to display error msg else make successModal true
      // this.naError = true;
      this.successModal = true;
    }
  }

  onCustomDateChange(event) {
    this.formattedDatetime = this.pipe.transform(this.selectedDate, 'yyyy-MM-dd HH:mm:ss');
    this.futureError = false;
    console.log(event);
  }

}



// patientsData: Patient[] = [{
//   name: "Jack",
//   age: 45,
//   gender: "Male",
//   cancerStage: 2,
//   prescribedDrugs: "Drug1, Drug2"
// },
// {
//   name: "Jack",
//   age: 45,
//   gender: "Male",
//   cancerStage: 2,
//   prescribedDrugs: "Drug1, Drug2"
// },
// {
//   name: "Jack",
//   age: 45,
//   gender: "Male",
//   cancerStage: 2,
//   prescribedDrugs: "Drug1, Drug2"
// },
// {
//   name: "Jack",
//   age: 45,
//   gender: "Male",
//   cancerStage: 2,
//   prescribedDrugs: "Drug1, Drug2"
// },
// {
//   name: "Jack",
//   age: 45,
//   gender: "Male",
//   cancerStage: 2,
//   prescribedDrugs: "Drug1, Drug2"
// }];
