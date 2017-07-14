//
//  NSString+Extension.h
//  RenShineDoctor
//
//  Created by 黄强强 on 15/11/6.
//  Copyright © 2015年 杭州岐黄信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (HQQCommonTools)

/**
 *  根据文字和字体大小计算文字尺寸
 *
 *  @param string 需要计算的string
 *  @param font   字体大小
 *
 *  @return 计算后的文字尺寸
 */
- (CGRect)hqq_rectWithFont:(UIFont *)font;
- (CGRect)hqq_rectWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth;
- (CGRect)hqq_rectWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth maxHeight:(CGFloat)maxHeight;

/**
 *  string转dict
 */
- (NSDictionary *)hqq_stringToDictionary;

- (NSString *)hqq_MD5String;

@end
