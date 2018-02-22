//
//  CCLoginNetwork.m
//  CCStructDemo
//
//  Created by Chris Captain on 2018/2/22.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import "CCLoginNetwork.h"

@implementation CCLoginNetwork

- (void)network_requestLoginDataWithMobile:(NSString *)mobile passwd:(NSString *)passwd successBlock:(void(^)(NSDictionary *responseDict))successBlock
{
    // 这里写网络请求 配置参数,请求成功之后把responseDict返回给controller
    
    // 下面的dict是请求到的dict
    NSDictionary *dict = [[NSDictionary alloc] init];
    
    if (successBlock) {
        successBlock(dict);
    }
}
@end
