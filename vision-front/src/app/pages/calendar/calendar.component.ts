import { DatePipe } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Appointment } from 'src/app/models/appoinment.model';
import { LocalStorageService } from 'src/app/services/local-storage.service';
import { VisionService } from 'src/app/services/vision.service';
@Component({
  selector: 'app-calendar',
  templateUrl: './calendar.component.html',
  styleUrls: ['./calendar.component.css']
})
export class CalendarComponent implements OnInit {

  selectedDate: Date = new Date();
  pipe = new DatePipe('en-US');
  formattedDatetime: string;
  displayDatetime: string;
  page: number = 1;
  pageSize: number = 5;
  selectedRow: Appointment;
  successModal: boolean = false;
  notes: string = "test Notes";
  loggedInID: any;
  loggedInName: any;
  appointmentData: Appointment[] = [];
  viewMode: boolean = false;

  constructor(private modalService: NgbModal,
    private visionService: VisionService,
    private localStorageService: LocalStorageService) {
    this.visionService.validateLoggedInSession();
  }

  ngOnInit(): void {

    this.loggedInID = this.localStorageService.getLoggedInID();
    this.loggedInName = this.localStorageService.getLoggedInName();
  }

  onCustomDateChange(event) {
    this.formattedDatetime = this.pipe.transform(this.selectedDate, 'yyyy-MM-dd');
    this.displayDatetime = this.pipe.transform(this.selectedDate, 'mediumDate');
    console.log(event);
    // use formattedDateTime to fetch appointment data
    // call api to get appointment data

    let body = { "doctor_id": this.loggedInID, "date_time": this.formattedDatetime }
    this.visionService.getAppointment(body).subscribe((res: any) => {

      this.appointmentData = res


      console.log("response from onCustomDateChange cdcvzd ", res);
    })


  }

  addNotes(content, rowData: Appointment, mode: string) {
    if (mode == 'view') {
      this.viewMode = true;
    } else {
      this.viewMode = false;
    }
    this.successModal = false;
    this.selectedRow = rowData;
    this.notes = this.selectedRow.notes;
    console.log("response from addNotes  ", this.selectedRow);

    this.modalService.open(content, { centered: true });
  }

  deleteAppointment(content, rowData: Appointment) {
    // take record id from rowData and call api. after success open below modal to display success msg

    let body = { "id": rowData.id }
    console.log("response from deleteAppointment fgf ", body);


    this.visionService.deleteAppointment(body).subscribe((res: any) => {

      this.modalService.open(content, { centered: true });
      this.onCustomDateChange(null);





      console.log("response from deleteAppointment cdcvzd ", res);
    })


  }

  saveNotes() {
    // call api to save notes. use selectedRow to get appointment id and notes to get entered note and then after success make successModal true


    let body = { "id": this.selectedRow.id, "notes": this.notes }
    this.visionService.saveNotes(body).subscribe((res: any) => {

      this.appointmentData = res

      if (this.appointmentData['status']) {
        this.successModal = true;
        this.onCustomDateChange(null);
      }


      console.log("response from saveNotes cdcvzd ", this.appointmentData['status']);
    })


  }

}


// [
//   {
//     patient_name: "Jack",
//     doctor_name: "Ma",
//     doc_notes: "Test",
//     datetime: "2021-11-30 11:30:00"
//   },
//   {
//     patient_name: "Jack",
//     doctor_name: "Ma",
//     doc_notes: "",
//     datetime: "2021-11-30 11:30:00"
//   },
//   {
//     patient_name: "Jack",
//     doctor_name: "Ma",
//     doc_notes: "Test",
//     datetime: "2021-11-30 11:30:00"
//   },
//   {
//     patient_name: "Jack",
//     doctor_name: "Ma",
//     doc_notes: "Test",
//     datetime: "2021-11-30 11:30:00"
//   },
//   {
//     patient_name: "Jack",
//     doctor_name: "Ma",
//     doc_notes: "Test",
//     datetime: "2021-11-30 11:30:00"
//   },
//   {
//     patient_name: "Jack",
//     doctor_name: "Ma",
//     doc_notes: "Test",
//     datetime: "2021-11-30 11:30:00"
//   },
// ]
