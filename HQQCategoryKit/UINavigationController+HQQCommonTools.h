//
//  UINavigationController+HQQCommonTools.h
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (HQQCommonTools)


/**
 *  push出一个控制器，并把自己从navigation栈中移除
 *
 *  @param viewController 需要push的控制器
 *  @param animated       动画效果
 */
- (void)hqq_pushViewControllerDelayPop:(UIViewController *)viewController animated:(BOOL)animated;

/**
 *  push出一个控制器，之后这个控制器返回的时候直接返回到rootViewController
 *
 *  @param viewController 需要push的控制器
 *  @param animated       动画效果
 */
- (void)hqq_pushViewControllerDelayPopToRoot:(UIViewController *)viewController animated:(BOOL)animated;

@end
