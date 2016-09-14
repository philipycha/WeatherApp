//
//  LHWCityViewController.h
//  Weather
//
//  Created by Philip Ha on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LHWCity.h"

@interface LHWCityViewController : UIViewController

@property (nonatomic, strong) LHWCity* city;

-(instancetype) initWithCity: (LHWCity *)city;


@end
