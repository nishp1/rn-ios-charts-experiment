//
//  RNBarChart.swift
//  ChartsTest
//
//  Created by Jose Padilla on 12/23/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

import Foundation
import Charts

@objc(RNBarChart)
class RNBarChart : BarChartView {
  
  var labels: [String]!
  var values: [Double]!
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    self.frame = frame;
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setChartLabels(labels: NSArray) {
    self.labels = labels.map({ return $0 as! String});
    setChart();
  }
  
  func setChartValues(values: NSArray) {
    self.values = values.map({ return $0 as! Double});
    setChart();
  }
  
  func setChart() {
    if self.labels != nil && self.values != nil {
      self.noDataText = "You need to provide data for the chart."
    
      var dataEntries: [BarChartDataEntry] = []
    
      for i in 0..<self.labels.count {
        let dataEntry = BarChartDataEntry(value: self.values[i], xIndex: i)
        dataEntries.append(dataEntry)
      }
    
      let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Sold")
      let chartData = BarChartData(xVals: labels, dataSet: chartDataSet)
      self.data = chartData
    
      self.descriptionText = ""
    
      chartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
      //        chartDataSet.colors = ChartColorTemplates.colorful()
    
      self.xAxis.labelPosition = .Bottom
      
      self.gridBackgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    
      //        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
      //    self.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .EaseInBounce)
    }
    
  }
}