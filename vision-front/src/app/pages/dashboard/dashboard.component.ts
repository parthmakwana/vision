import { Component, OnInit } from '@angular/core';
import Chart from 'chart.js';
import { VisionService } from 'src/app/services/vision.service';

// core components
import {
  chartOptions,
  parseOptions,
  chartExample1,
  chartExample2
} from "../../variables/charts";

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements OnInit {

  public datasets: any;
  public data: any;
  public salesChart;
  public clicked: boolean = true;
  public clicked1: boolean = false;
  selectedFrame: any = "patientStats";

  constructor(private visionService: VisionService) {
    this.visionService.validateLoggedInSession();
  }

  ngOnInit() {
    this.getAPI();

    this.datasets = [
      [0, 20, 10, 30, 15, 40, 20, 60, 60],
      [0, 20, 5, 25, 10, 30, 15, 40, 40]
    ];
    this.data = this.datasets[0];


    var chartOrders = document.getElementById('chart-orders');

    parseOptions(Chart, chartOptions());


    var ordersChart = new Chart(chartOrders, {
      type: 'bar',
      options: chartExample2.options,
      data: chartExample2.data
    });

    var chartSales = document.getElementById('chart-sales');

    this.salesChart = new Chart(chartSales, {
      type: 'line',
      options: chartExample1.options,
      data: chartExample1.data
    });
  }

  getAPI() {
    this.visionService.getAPI().subscribe((res: any) => {
      console.log("response from get api ", res);
    })
  }

  changeFrame(frame: any) {
    this.selectedFrame = frame;
  }

  public updateOptions() {
    this.salesChart.data.datasets[0].data = this.data;
    this.salesChart.update();
  }

  resizeIframe(obj) {
    console.log(obj);
    var iframe = document.getElementById('iframeId');
    if(window.screen.width <= 1280){
      iframe.style.width = 800+'px';
    }else{
      iframe.style.width = 1330+'px';
    }
    // obj.style.height = obj.contentWindow.document.documentElement.scrollHeight + 'px';
  }

}
