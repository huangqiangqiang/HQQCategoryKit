//
//  NSArray+HQQCategoryKit.m
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import "NSArray+HQQCategoryKit.h"

@implementation NSArray (HQQCategoryKit)

- (void)hqq_removeObject:(id)obj formArray:(NSArray *)array
{
    NSMutableArray *temp = [NSMutableArray arrayWithArray:array];
    [temp removeObject:obj];
    
    array = [NSArray arrayWithArray:temp];
}

@end
