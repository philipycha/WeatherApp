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


@interface UITabBarController ()

@end

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [[UITabBarController alloc] init];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    NSArray *cities = @[
                        [[LHWCity alloc] initWithName:@"Vancouver"],
                        [[LHWCity alloc] initWithName:@"Tokyo"],
                        [[LHWCity alloc] initWithName:@"Toronto"],
                        [[LHWCity alloc] initWithName:@"Seoul"],
                        [[LHWCity alloc] initWithName:@"Hong Kong"],
                        ];
    
    NSArray *cityVC = @[
                        [[LHWCityViewController alloc] initWithCity:cities[0]],
                        [[LHWCityViewController alloc] initWithCity:cities[1]],
                        [[LHWCityViewController alloc] initWithCity:cities[2]],
                        [[LHWCityViewController alloc] initWithCity:cities[3]],
                        [[LHWCityViewController alloc] initWithCity:cities[4]],
                        ];
    

    
//    
//    UITabBarItem *vancouver = [self tabBarItem];
//    //    UIImage *vancouver = [UIImage imageNamed:@"YOUR_IMAGE_NAME.png"];
//    //    [tabBarItem setImage:tabBarImage];
//    [vancouver setTitle:@"Vancouer"];
//    
//    UITabBarItem *tokyo = [self tabBarItem];
//    //    UIImage *vancouver = [UIImage imageNamed:@"YOUR_IMAGE_NAME.png"];
//    //    [tabBarItem setImage:tabBarImage];
//    [newyork setTitle:@"Tokyo"];
//    
//    UITabBarItem *toronto = [self tabBarItem];
//    //    UIImage *vancouver = [UIImage imageNamed:@"YOUR_IMAGE_NAME.png"];
//    //    [tabBarItem setImage:tabBarImage];
//    [seoul setTitle:@"Toronto"];
//    
//    UITabBarItem *seoul = [self tabBarItem];
//    //    UIImage *vancouver = [UIImage imageNamed:@"YOUR_IMAGE_NAME.png"];
//    //    [tabBarItem setImage:tabBarImage];
//    [tokyo setTitle:@"Seoul"];
//    
//    UITabBarItem *hongkong = [self tabBarItem];
//    //    UIImage *vancouver = [UIImage imageNamed:@"YOUR_IMAGE_NAME.png"];
//    //    [tabBarItem setImage:tabBarImage];
//    [hongkong setTitle:@"Hong Kong"];
    

    NSArray *controllers = [[NSArray alloc] initWithObjects:cityVC[0],cityVC[1],cityVC[2],cityVC[3],cityVC[4], nil];
    
    self.window.rootViewController = tabBarController;
    
    tabBarController.viewControllers = controllers;
    
//    make sure you mention these two statements in the dealloc method
//    [cityVC release];
//    [detailedVC release];

//    
//    [self. setViewControllers:viewControllers animated:NO];
//    
//  
//    [self.window addSubview:[tabBarController view]];
//    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
