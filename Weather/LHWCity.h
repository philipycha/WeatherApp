//
//  LHWCity.h
//  Weather
//
//  Created by Philip Ha on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LHWCity : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* currentWeather;

- (instancetype)initWithName:(NSString*)name CurrentWeather:(NSString*)currentWeather;

@end
