//
//  AppDelegate.h
//  CCStructDemo
//
//  Created by Chris Captain on 2018/2/22.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

- (void)setRootViewController:(UIViewController *)viewController;

@end

