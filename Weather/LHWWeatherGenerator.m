//
//  LHWWeather.m
//  Weather
//
//  Created by Philip Ha on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWWeatherGenerator.h"

@implementation LHWWeatherGenerator

+ (NSString*)randomWeatherGenerator {
    
    int i = arc4random_uniform(9);
    
    if (i == 1){
        
        return @"Cloudy";
    }
    if (i == 2){
        
        return @"Fog";
    }
    if (i == 3){
        
        return @"Clear";
    }
    if (i == 4){
        
        return @"Partly Cloudy";
    }
    if (i == 5){
        
        return @"Rain";
    }
    if (i == 6){
        
        return @"Sleet";
    }
    if (i == 7){
        
        return @"Snow";
    }
    if (i == 8){
        
        return @"Sunny";
    }
    if (i == 9){
        
        return @"Wind";
    }
    
    return @"Default";
    
}

@end
