import { Routes } from '@angular/router';

import { DashboardComponent } from '../../pages/dashboard/dashboard.component';
import { IconsComponent } from '../../pages/icons/icons.component';
import { MapsComponent } from '../../pages/maps/maps.component';
import { UserProfileComponent } from '../../pages/user-profile/user-profile.component';
import { TablesComponent } from '../../pages/tables/tables.component';
import { PatientComponent } from 'src/app/pages/patient/patient.component';
import { DrugComponent } from 'src/app/pages/drug/drug.component';
import { CalendarComponent } from 'src/app/pages/calendar/calendar.component';

export const AdminLayoutRoutes: Routes = [
    { path: 'dashboard', component: DashboardComponent },
    { path: 'user-profile', component: UserProfileComponent },
    { path: 'tables', component: TablesComponent },
    { path: 'icons', component: IconsComponent },
    { path: 'maps', component: MapsComponent },
    { path: 'patient', component: PatientComponent },
    { path: 'drug', component: DrugComponent },
    { path: 'calendar', component: CalendarComponent },
];
