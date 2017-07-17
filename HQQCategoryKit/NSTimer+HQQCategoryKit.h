//
//  NSTimer+HQQCategoryKit.h
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import <Foundation/Foundation.h>

@interface NSTimer (HQQCategoryKit)

+ (NSTimer *)hqq_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)())block repeats:(BOOL)repeats;

@end
