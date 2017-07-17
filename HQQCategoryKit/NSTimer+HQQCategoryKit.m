//
//  NSTimer+HQQCategoryKit.m
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import "NSTimer+HQQCategoryKit.h"

@implementation NSTimer (HQQCategoryKit)

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
