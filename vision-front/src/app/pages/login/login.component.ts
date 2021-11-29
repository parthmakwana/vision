import { Router } from '@angular/router';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { LocalStorageService } from 'src/app/services/local-storage.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit, OnDestroy {
  constructor(private router: Router,
    private localStorageService: LocalStorageService) {
    if (this.localStorageService.isLoggedIn()) {
      this.router.navigate(['dashboard']);
    }
  }

  id: any = "";
  password: any = "";
  showError: boolean = false;
  showCredError: boolean = false;

  ngOnInit() {
  }
  ngOnDestroy() {
  }

  validate() {
    this.showError = false;
    this.showCredError = false;
    // call api if res true naviagate to dashboard else show error message
    if (this.id && this.password) {
      // call API here. if res true then this or else that
      if (true) {
        this.router.navigate(['dashboard']);
        this.localStorageService.set("isLoggedIn", true);
        this.localStorageService.set("loggedInID", this.id);
        this.localStorageService.set("loggedInName", "Test User");
      } {
        this.showError = true;
      }
    } else {
      this.showCredError = true;
    }
  }

}
