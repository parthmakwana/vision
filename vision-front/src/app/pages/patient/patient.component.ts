import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
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

<<<<<<< Updated upstream
  constructor(private visionService: VisionService) { }
=======
  patientsData: Patient[] = [{
    name: "Jack1",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack2",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack3",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack4",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack5",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  }];

  selectedRow: Patient = new Patient();
  predictionData: any = { prediction: 4, probability: "67%" };

  constructor(private modalService: NgbModal) { }
>>>>>>> Stashed changes

  ngOnInit(): void {

    this.getPatientData();
  }

  getPatientData() {
    this.visionService.getPatientData().subscribe((res: any) => {
      this.patientsData=res;
      console.log("response from get api ", res);
    })
  }



  viewPrediction(content, rowData: Patient) {
    console.log(content);
    this.selectedRow = rowData;
    this.modalService.open(content, { centered: true });
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
