//
//  NSArray+HQQCategoryKit.h
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (HQQCategoryKit)

/**
 *  移除array里面的obj对象
 *
 *  @param obj   需要移除的对象
 *  @param array 从array里面移除
 */
- (void)hqq_removeObject:(id)obj formArray:(NSArray *)array;

@end
