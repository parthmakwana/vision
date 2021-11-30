import { DatePipe } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Appointment } from 'src/app/models/appoinment.model';

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
  selectedRow: any;
  successModal: boolean = false;
  notes: string = "";
  appointmentData: Appointment[] = [
    {
      patient_name: "Jack",
      doctor_name: "Ma",
      doc_notes: "Test",
      datetime: "2021-11-30 11:30:00"
    },
    {
      patient_name: "Jack",
      doctor_name: "Ma",
      doc_notes: "",
      datetime: "2021-11-30 11:30:00"
    },
    {
      patient_name: "Jack",
      doctor_name: "Ma",
      doc_notes: "Test",
      datetime: "2021-11-30 11:30:00"
    },
    {
      patient_name: "Jack",
      doctor_name: "Ma",
      doc_notes: "Test",
      datetime: "2021-11-30 11:30:00"
    },
    {
      patient_name: "Jack",
      doctor_name: "Ma",
      doc_notes: "Test",
      datetime: "2021-11-30 11:30:00"
    },
    {
      patient_name: "Jack",
      doctor_name: "Ma",
      doc_notes: "Test",
      datetime: "2021-11-30 11:30:00"
    },
  ]

  constructor(private modalService: NgbModal) { }

  ngOnInit(): void {
  }

  onCustomDateChange(event) {
    this.formattedDatetime = this.pipe.transform(this.selectedDate, 'yyyy-MM-dd');
    this.displayDatetime = this.pipe.transform(this.selectedDate, 'mediumDate');
    console.log(event);
    // use formattedDateTime to fetch appointment data
    // call api to get appointment data
  }

  addNotes(content, rowData: Appointment) {
    this.selectedRow = rowData;
    this.modalService.open(content, { centered: true });
  }

  deleteAppointment(content, rowData: Appointment) {
    // take record id from rowData and call api. after success open below modal to display success msg
    this.modalService.open(content, { centered: true });
  }

  saveNotes() {
    // call api to save notes. use selectedRow to get appointment id and notes to get entered note and then after success make successModal true
    this.successModal = true;
  }

}
