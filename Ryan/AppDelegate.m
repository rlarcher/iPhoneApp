//
//  AppDelegate.m
//  Ryan
//
//  Created by William Lutz on 7/15/14.
//  Copyright (c) 2014 SitWith. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "MyLunchViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import <Foundation/NSXMLParser.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application
    
    //make sure the FB login is loaded
    [FBLoginView class];
    
    //my lunches
    MyLunchViewController *myLunchViewController = [[MyLunchViewController alloc] init];
    
    //lunches to sign up for
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    
    //create a lunch
    ThirdViewController *thirdViewController = [[ThirdViewController alloc]init];
    
    //home view
    FirstViewController *firstViewController = [[FirstViewController alloc] init];
    
    // set up navigation controllers and add viewcontrollers
    UINavigationController *naviController = [[UINavigationController alloc]init];
    
    [naviController setViewControllers:@[secondViewController,thirdViewController,myLunchViewController,firstViewController]];
    
    // set up the window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = naviController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    
    // Call FBAppCall's handleOpenURL:sourceApplication to handle Facebook app responses
    BOOL wasHandled = [FBAppCall handleOpenURL:url sourceApplication:sourceApplication];
    
    // You can add your app-specific url handling code here if needed
    
    return wasHandled;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
