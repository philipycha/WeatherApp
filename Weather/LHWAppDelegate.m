//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "LHWCityViewController.h"
#import "LHWDetailedViewController.h"
#import "LHWCity.h"
#import "LHWWeatherGenerator.h"


@interface UITabBarController ()

@end

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [[UITabBarController alloc] init];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    NSArray *cities = @[
                        [[LHWCity alloc] initWithName:@"Vancouver" CurrentWeather:[NSString stringWithFormat:@"%@", LHWWeatherGenerator.randomWeatherGenerator]],
                        [[LHWCity alloc] initWithName:@"Tokyo" CurrentWeather:[NSString stringWithFormat:@"%@", LHWWeatherGenerator.randomWeatherGenerator]],
                        [[LHWCity alloc] initWithName:@"Toronto" CurrentWeather:[NSString stringWithFormat:@"%@", LHWWeatherGenerator.randomWeatherGenerator]],
                        [[LHWCity alloc] initWithName:@"Seoul" CurrentWeather:[NSString stringWithFormat:@"%@", LHWWeatherGenerator.randomWeatherGenerator]],
                        [[LHWCity alloc] initWithName:@"Hong Kong" CurrentWeather:[NSString stringWithFormat:@"%@", LHWWeatherGenerator.randomWeatherGenerator]],
                        ];
    
    NSArray *cityVC = @[
                        [[LHWCityViewController alloc] initWithCity:cities[0]],
                        [[LHWCityViewController alloc] initWithCity:cities[1]],
                        [[LHWCityViewController alloc] initWithCity:cities[2]],
                        [[LHWCityViewController alloc] initWithCity:cities[3]],
                        [[LHWCityViewController alloc] initWithCity:cities[4]],
                        ];
    
    NSArray *cityNav = @[
                        [[UINavigationController alloc] initWithRootViewController:cityVC[0]],
                        [[UINavigationController alloc] initWithRootViewController:cityVC[1]],
                        [[UINavigationController alloc] initWithRootViewController:cityVC[2]],
                        [[UINavigationController alloc] initWithRootViewController:cityVC[3]],
                        [[UINavigationController alloc] initWithRootViewController:cityVC[4]],
                         ];
    
    
    // in order to go back into cities to grab the name use for loop
    
    for (int i = 0; i < cities.count; i++ ){
        
        UINavigationController *navController = cityNav[i];
        
        LHWCity *currentCity = cities[i];
        
        navController.title = currentCity.name;
        
    }
    

    NSArray *controllers = [[NSArray alloc] initWithObjects:cityNav[0],cityNav[1],cityNav[2],cityNav[3],cityNav[4], nil];
    
    self.window.rootViewController = tabBarController;
    
    tabBarController.viewControllers = controllers;
    
    [tabBarController setViewControllers:controllers];

    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
