//
//  LHWCityViewController.m
//  Weather
//
//  Created by Philip Ha on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewController.h"

@interface LHWCityViewController ()

@property (nonatomic, weak) UIButton *  detailButton;

@property (nonatomic, weak) UILabel *                cityTitle;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxHeight;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxWidth;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxRight;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxBottom;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxBottom2;

@end

@implementation LHWCityViewController

-(instancetype) initWithCity: (LHWCity *)city {
    self = [super init];
    if (self) {
        _city = city;
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *cityTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    
    cityTitle.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:cityTitle];
    
    cityTitle.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:100]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:100]];
    
    cityTitle.text = self.city.name;
    
    cityTitle.textColor = [UIColor whiteColor];
    
    
    UIButton *detailButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [detailButton setTitle:@"More Details" forState:UIControlStateNormal];
    [detailButton addTarget:self action:@selector(showWeatherDetails ) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:detailButton];
    detailButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.detailButton = detailButton;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:detailButton
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:cityTitle
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:50.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:detailButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1
                                                           constant:0]];
    
}

-(void) showWeatherDetails{
    
    LHWDetailedViewController *detailedVC = [[LHWDetailedViewController alloc] init];
    detailedVC.cityDetails = self.city;
    [self.navigationController pushViewController:detailedVC animated:YES];
    
    
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


@end
