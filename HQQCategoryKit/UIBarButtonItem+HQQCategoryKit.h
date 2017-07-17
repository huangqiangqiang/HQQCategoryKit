//
//  UIBarButtonItem+HQQCategoryKit.h
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HQQCategoryKit)

+ (UIBarButtonItem *)hqq_itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

@end
