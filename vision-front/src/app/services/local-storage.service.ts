import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LocalStorageService {

  constructor() { }

  set(key, val) {
    localStorage.setItem(key, val);
  }

  get(key) {
    return localStorage.getItem(key);
  }

  isLoggedIn() {
    let res = this.get("isLoggedIn");
    if (res == "true") {
      return true;
    } else {
      return false;
    }
  }

}
