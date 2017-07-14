//
//  NSArray+Extension.h
//  RenShineDoctor
//
//  Created by 黄强强 on 15/12/9.
//  Copyright © 2015年 杭州岐黄信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (HQQCommonTools)

/**
 *  移除array里面的obj对象
 *
 *  @param obj   需要移除的对象
 *  @param array 从array里面移除
 */
- (void)hqq_removeObject:(id)obj formArray:(NSArray *)array;

@end
