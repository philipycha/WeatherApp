//
//  LHWDetailedViewController.m
//  Weather
//
//  Created by Philip Ha on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWDetailedViewController.h"

@interface LHWDetailedViewController ()

@end

@implementation LHWDetailedViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    UILabel *cityDetails = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 300, 400)];
    
    cityDetails.textColor = [UIColor whiteColor];
    
    cityDetails.text = [NSString stringWithFormat:@"City: %@\nCurrent Weather: %@", self.cityDetails.name, self.cityDetails.currentWeather];
                        
    cityDetails.numberOfLines = 2;
    
    UIImageView *currentWeatherImage = [[UIImageView alloc] initWithFrame:CGRectMake(50, 140, 50, 50)];
    
    currentWeatherImage.alpha = 0.5;
    
    currentWeatherImage.image = [self weatherImagePicker:self.cityDetails.currentWeather];
    
    [self.view addSubview:cityDetails];
    
    [self.view addSubview:currentWeatherImage];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (UIImage *)weatherImagePicker: (NSString *)curretWeather {
    
    UIImage *currentWeatherPicture;
    
    if ([curretWeather isEqualToString:@"Clear"]) {
        currentWeatherPicture = [UIImage imageNamed:@"clear-day.png"];
    }
    if ([curretWeather isEqualToString:@"Cloudy"]) {
        currentWeatherPicture = [UIImage imageNamed:@"cloudy.png"];
    }
    if ([curretWeather isEqualToString:@"Fog"]) {
        currentWeatherPicture = [UIImage imageNamed:@"fog.png"];
    }
    if ([curretWeather isEqualToString:@"Partly Cloudy"]) {
        currentWeatherPicture = [UIImage imageNamed:@"partly-cloudy.png"];
    }
    if ([curretWeather isEqualToString:@"Rain"]) {
        currentWeatherPicture = [UIImage imageNamed:@"rain.png"];
    }
    if ([curretWeather isEqualToString:@"Sleet"]) {
        currentWeatherPicture = [UIImage imageNamed:@"sleet.png"];
    }
    if ([curretWeather isEqualToString:@"Snow"]) {
        currentWeatherPicture = [UIImage imageNamed:@"snow.png"];
    }
    if ([curretWeather isEqualToString:@"Sunny"]) {
        currentWeatherPicture = [UIImage imageNamed:@"clear-day.png"];
    }
    if ([curretWeather isEqualToString:@"Windy"]) {
        currentWeatherPicture = [UIImage imageNamed:@"wind.png"];
    }
    
    
    return currentWeatherPicture;
}

@end
