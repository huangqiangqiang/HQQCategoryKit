//
//  NSTimer+HQQCommonTools.m
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import "NSTimer+HQQCommonTools.h"

@implementation NSTimer (HQQCommonTools)

+ (NSTimer *)hqq_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)())block repeats:(BOOL)repeats
{
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(hqq_blockInvoke:) userInfo:[block copy]  repeats:repeats];
}

+ (void)hqq_blockInvoke:(NSTimer *)timer
{
    void (^block)() = timer.userInfo;
    if (block) {
        block();
    }
}

@end
