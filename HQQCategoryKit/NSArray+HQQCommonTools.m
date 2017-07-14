//
//  NSArray+Extension.m
//  RenShineDoctor
//
//  Created by 黄强强 on 15/12/9.
//  Copyright © 2015年 杭州岐黄信息技术有限公司. All rights reserved.
//

#import "NSArray+HQQCommonTools.h"

@implementation NSArray (HQQCommonTools)

- (void)hqq_removeObject:(id)obj formArray:(NSArray *)array
{
    NSMutableArray *temp = [NSMutableArray arrayWithArray:array];
    [temp removeObject:obj];
    
    array = [NSArray arrayWithArray:temp];
}

@end
