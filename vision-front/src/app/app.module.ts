import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { AdminLayoutComponent } from './layouts/admin-layout/admin-layout.component';
import { AuthLayoutComponent } from './layouts/auth-layout/auth-layout.component';

import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { AppRoutingModule } from './app.routing';
import { ComponentsModule } from './components/components.module';
import { PatientComponent } from './pages/patient/patient.component';
import { DrugComponent } from './pages/drug/drug.component';
import { VisionService } from './services/vision.service';
import { NgSelectModule } from '@ng-select/ng-select';
import { LocalStorageService } from './services/local-storage.service';
import {DlDateTimePickerModule, DlDateTimeDateModule} from 'angular-bootstrap-datetimepicker';
import { CalendarComponent } from './pages/calendar/calendar.component';

@NgModule({
  imports: [
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    ComponentsModule,
    NgbModule,
    RouterModule,
    AppRoutingModule,
    NgSelectModule,
    DlDateTimePickerModule,
    DlDateTimeDateModule
  ],
  declarations: [
    AppComponent,
    AdminLayoutComponent,
    AuthLayoutComponent,
    PatientComponent,
    DrugComponent,
    CalendarComponent
  ],
  providers: [VisionService, LocalStorageService],
  bootstrap: [AppComponent]
})
export class AppModule { }
