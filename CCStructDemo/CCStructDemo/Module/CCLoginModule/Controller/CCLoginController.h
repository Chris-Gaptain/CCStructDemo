//
//  CCLoginController.h
//  CCStructDemo
//
//  Created by Chris Captain on 2018/2/22.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import "CCBaseController.h"

@interface CCLoginController : CCBaseController

+ (instancetype)sharedInstance;

- (void)pushCCRegisterViewController:(UIViewController *)viewController;

- (void)requestLoginNetWorkWithMobile:(NSString *)mobile passwd:(NSString *)passwd successBlock:(void(^)(void))successBlock;

@end
