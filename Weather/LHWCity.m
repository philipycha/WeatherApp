//
//  LHWCity.m
//  Weather
//
//  Created by Philip Ha on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWCity.h"

@implementation LHWCity

- (instancetype)initWithName:(NSString*)name /*CurrentWeather:(NSString*)currentWeather*/
{
    self = [super init];
    if (self) {
        _name = name;
//        _currentWeather = currentWeather;
    }
    return self;
}

@end
