//
//  UINavigationController+HQQCategoryKit.h
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import <UIKit/UIKit.h>

@interface UINavigationController (HQQCategoryKit)

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
