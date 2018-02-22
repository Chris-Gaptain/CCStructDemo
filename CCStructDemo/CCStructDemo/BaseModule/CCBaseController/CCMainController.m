//
//  CCMainController.m
//  CCStructDemo
//
//  Created by Chris Captain on 2018/2/22.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import "CCMainController.h"
#import "AppDelegate.h"

@implementation CCMainController

+ (instancetype)sharedInstance
{
    static CCMainController *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)showMainViewController
{
    UITabBarController *main = [[UITabBarController alloc] init];
    [((AppDelegate *)[[UIApplication sharedApplication] delegate]) setRootViewController:main];
}

@end
