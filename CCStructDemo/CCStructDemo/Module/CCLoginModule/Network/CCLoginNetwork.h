//
//  CCLoginNetwork.h
//  CCStructDemo
//
//  Created by Chris Captain on 2018/2/22.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCLoginNetwork : NSObject

- (void)network_requestLoginDataWithMobile:(NSString *)mobile passwd:(NSString *)passwd successBlock:(void(^)(NSDictionary *responseDict))successBlock;

@end
