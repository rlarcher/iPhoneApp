//
//  AppDelegate.h
//  Ryan
//
//  Created by William Lutz on 7/15/14.
//  Copyright (c) 2014 SitWith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

NSString *userEmail;
NSString *chosenRestaurant;
NSArray *possibleHours;
NSArray *possibleMinutes;
NSArray *ampm;
NSDate *chosenDate;
NSString *userName;


@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong,nonatomic) ViewController *viewController;
@property (strong, nonatomic) UIWindow *window;
@end



