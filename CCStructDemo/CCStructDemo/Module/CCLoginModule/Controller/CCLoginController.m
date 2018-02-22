//
//  CCLoginController.m
//  CCStructDemo
//
//  Created by Chris Captain on 2018/2/22.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import "CCLoginController.h"
#import "CCRegisterViewController.h"
#import "CCLoginNetwork.h"
#import "CCMainController.h"

@implementation CCLoginController

+ (instancetype)sharedInstance
{
    static CCLoginController *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

// push到注册页面,如果其他模块也需要跳转到注册页面,则可调用此方法
- (void)pushCCRegisterViewController:(UIViewController *)viewController
{
    CCRegisterViewController *registerVC = [[CCRegisterViewController alloc] init];
    [viewController.navigationController pushViewController:registerVC animated:YES];
}

// 登录的网络请求
- (void)requestLoginNetWorkWithMobile:(NSString *)mobile passwd:(NSString *)passwd successBlock:(void(^)(void))successBlock
{
    CCLoginNetwork *loginApi = [[CCLoginNetwork alloc] init];
    [loginApi network_requestLoginDataWithMobile:mobile passwd:passwd successBlock:^(NSDictionary *responseDict) {
        
        // 登录成功后 进入到主页
        [[CCMainController sharedInstance] showMainViewController];
        
    }];
}

@end
