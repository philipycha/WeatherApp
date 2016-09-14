//
//  LHWDetailedViewController.h
//  Weather
//
//  Created by Philip Ha on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LHWCity.h"

@interface LHWDetailedViewController : UIViewController

@property (nonatomic, strong) LHWCity *cityDetails;

- (UIImage *)weatherImagePicker: (NSString *)curretWeather;


@end
