import { Component, OnInit } from '@angular/core';
import { Drug } from 'src/app/models/drug.model';

@Component({
  selector: 'app-drug',
  templateUrl: './drug.component.html',
  styleUrls: ['./drug.component.css']
})
export class DrugComponent implements OnInit {

  drugsData: Drug[] = [
    {
      name: "Drug1",
      description: "Description1"
    },
    {
      name: "Drug1",
      description: "Description1"
    },
    {
      name: "Drug1",
      description: "Description1"
    },
    {
      name: "Drug1",
      description: "Description1"
    },
    {
      name: "Drug1",
      description: "Description1"
    }]

  constructor() { }

  ngOnInit(): void {
  }

}
