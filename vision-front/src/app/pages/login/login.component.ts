import { Router } from '@angular/router';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { LocalStorageService } from 'src/app/services/local-storage.service';
import { VisionService } from 'src/app/services/vision.service';
import { User } from 'src/app/models/userLogin.model';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit, OnDestroy {

  //userDetail: any="";

  userDetail: User;


  constructor(private router: Router,
    private localStorageService: LocalStorageService,private visionService: VisionService,) {
    if (this.localStorageService.isLoggedIn()) {
      this.router.navigate(['dashboard']);
    }
  }

  id: any = "";
  password: any = "";
  showError: boolean = false;
  showCredError: boolean = false;
  username: string="";
  status: boolean=false;

  ngOnInit() {


  }
  ngOnDestroy() {
  }

  checkLogin(body) {    
      this.visionService.checkLogin(body).subscribe((res: any ) => {
      
      this.userDetail=res

      this.username=this.userDetail['userName'];
      this.status=this.userDetail['status'];
      // for (let key in res){
      //   this.userDetail.push(res[key])
      // }
     // JSON.stringify(res[1])
     //JSON.stringify(res)

     if (this.status) {
      this.router.navigate(['dashboard']);
      this.localStorageService.set("isLoggedIn", true);
      this.localStorageService.set("loggedInID", this.id);
      this.localStorageService.set("loggedInName", this.username);
    } 
    else{
      this.showError = true;
    }

      

      console.log("response from login cdcvzd ",this.userDetail['userName']);
    })
  }

  validate() {
    this.showError = false;
    this.showCredError = false;
    // call api if res true naviagate to dashboard else show error message
    let body = {"name": this.id, "password": this.password}
    console.log(body);
    
    if (this.id && this.password) {
      this.checkLogin(JSON.stringify(body));
      // call API here. if res true then this or else that
      console.log("response from inside the fun ", this.status);
      //this.userDetail!=false
      
    } else {
      this.showCredError = true;
    }
  }

}
