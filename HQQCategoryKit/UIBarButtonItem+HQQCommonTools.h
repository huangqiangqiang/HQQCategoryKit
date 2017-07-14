//
//  UIBarButtonItem+HQQCommonTools.h
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HQQCommonTools)

+ (UIBarButtonItem *)hqq_itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

@end
