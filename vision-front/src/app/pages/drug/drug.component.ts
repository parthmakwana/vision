import { Component, OnInit } from '@angular/core';
import { Drug } from 'src/app/models/drug.model';
import { Patient } from 'src/app/models/patient.model';
import { VisionService } from 'src/app/services/vision.service';


@Component({
  selector: 'app-drug',
  templateUrl: './drug.component.html',
  styleUrls: ['./drug.component.css']
})
export class DrugComponent implements OnInit {

  drugsData: Drug[] = [];
  patientsData: Patient[] = [];
  selectedPatient: number;
  selectedDrug: any;
  predictedEfficacy: any = "0%";
  page: number = 1;
  pageSize: number = 5;
  public focus;

  constructor(private visionService: VisionService) { }

  ngOnInit(): void {
    this.getPatientData();
    this.getDrugData();
  }

  getDrugData() {
    this.visionService.getDrugData().subscribe((res: any) => {
      this.drugsData = res;
      if (this.drugsData) {
        this.selectedDrug = this.drugsData[0].index;
      }
      console.log("response from get api ", res);
    })
  }

  getPatientData() {
    this.visionService.getPatientData().subscribe((res: any) => {
      this.patientsData = res;
      if (this.patientsData) {
        this.selectedPatient = this.patientsData[0].id;
      }
      console.log("response from get api ", res);
    })
  }

  findEfficacyPrection() {
    // call API - use selectedPatient and selectedDrug for the parameters and save in predictedEfficacy
    console.log("findEfficacyPrection");
  }

}


// [
//   {
//     name: "Drug1",
//     description: "Description1"
//   },
//   {
//     name: "Drug1",
//     description: "Description1"
//   },
//   {
//     name: "Drug1",
//     description: "Description1"
//   },
//   {
//     name: "Drug1",
//     description: "Description1"
//   },
//   {
//     name: "Drug1",
//     description: "Description1"
//   }]