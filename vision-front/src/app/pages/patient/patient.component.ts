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
  patientsData: Patient[] = [];

  //patientsData: Patient[] = res;


  constructor(private visionService: VisionService, private modalService: NgbModal) {
    this.visionService.validateLoggedInSession();
  }



  selectedRow: Patient = new Patient();
  predictionData: any = { prediction: 4, probability: "67%" };
  page: number = 1;
  pageSize: number = 5;
  public focus;


  ngOnInit(): void {

    this.getPatientData();
  }

  getPatientData() {
    this.visionService.getPatientData().subscribe((res: any) => {
      this.patientsData = res;
      console.log("response from get api ", res);
    })
  }



  viewPrediction(content, rowData: Patient) {
    console.log(content);
    this.selectedRow = rowData;
    this.modalService.open(content, { centered: true });
  }

  myFunction() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[0];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
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
