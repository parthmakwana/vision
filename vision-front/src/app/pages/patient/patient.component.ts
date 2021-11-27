import { Component, OnInit } from '@angular/core';
import { Patient } from 'src/app/models/patient.model';
import { VisionService } from 'src/app/services/vision.service';


@Component({
  selector: 'app-patient',
  templateUrl: './patient.component.html',
  styleUrls: ['./patient.component.css']
})
export class PatientComponent implements OnInit {
  patientsData: Patient[];

  //patientsData: Patient[] = res;

  constructor(private visionService: VisionService) { }

  ngOnInit(): void {

    this.getPatientData();
  }

  getPatientData() {
    this.visionService.getPatientData().subscribe((res: any) => {
      this.patientsData=res;
      console.log("response from get api ", res);
    })
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
