//
//  MXAppDelegate.m
//  MXCardsSwipingView
//
//  Created by Scott Kensell on 07/01/2016.
//  Copyright (c) 2016 Scott Kensell. All rights reserved.
//

#import "MXAppDelegate.h"

#import "MXViewController.h"

@implementation MXAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] init];
    [self.window makeKeyAndVisible];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.rootViewController = [MXViewController new];
    self.window.backgroundColor = [UIColor whiteColor];
    return YES;
}

@end
