import { Component, OnInit } from '@angular/core';
import { Drug } from 'src/app/models/drug.model';
import { VisionService } from 'src/app/services/vision.service';


@Component({
  selector: 'app-drug',
  templateUrl: './drug.component.html',
  styleUrls: ['./drug.component.css']
})
export class DrugComponent implements OnInit {

  drugsData: Drug[]; 

  constructor(private visionService: VisionService) { }

  ngOnInit(): void {

    this.getDrugData();
  }

  getDrugData() {
    this.visionService.getDrugData().subscribe((res: any) => {
      this.drugsData=res;
      console.log("response from get api ", res);
    })
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