import { Component, OnInit } from '@angular/core';
import { Patient } from 'src/app/models/patient.model';

@Component({
  selector: 'app-patient',
  templateUrl: './patient.component.html',
  styleUrls: ['./patient.component.css']
})
export class PatientComponent implements OnInit {

  patientsData: Patient[] = [{
    name: "Jack",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  },
  {
    name: "Jack",
    age: 45,
    gender: "Male",
    cancerStage: 2,
    prescribedDrugs: "Drug1, Drug2"
  }];

  constructor() { }

  ngOnInit(): void {
  }

}
