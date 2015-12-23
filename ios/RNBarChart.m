//
//  RNBarChart.m
//  ChartsTest
//
//  Created by Jose Padilla on 12/23/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "RNBarChart.h"

#import "RCTViewManager.h"

@interface RCT_EXTERN_MODULE(RNBarChartSwift, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(chartLabels, NSArray);
RCT_EXPORT_VIEW_PROPERTY(chartValues, NSArray);

@end