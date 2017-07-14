//
//  NSTimer+HQQCommonTools.h
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (HQQCommonTools)

+ (NSTimer *)hqq_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)())block repeats:(BOOL)repeats;

@end
