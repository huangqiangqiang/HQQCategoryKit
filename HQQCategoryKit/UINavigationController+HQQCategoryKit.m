//
//  UINavigationController+HQQCategoryKit.m
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import "UINavigationController+HQQCategoryKit.h"

@implementation UINavigationController (HQQCategoryKit)

- (void)hqq_pushViewControllerDelayPop:(UIViewController *)viewController animated:(BOOL)animated
{
    NSMutableArray *array = [NSMutableArray arrayWithArray:self.viewControllers];
    [array removeLastObject];
    [array addObject:viewController];
    
    viewController.hidesBottomBarWhenPushed = YES;
    self.interactivePopGestureRecognizer.delegate = (id)self;
    
    [self setViewControllers:array animated:YES];
}

- (void)hqq_pushViewControllerDelayPopToRoot:(UIViewController *)viewController animated:(BOOL)animated
{
    NSMutableArray *array = [NSMutableArray arrayWithObject:[[NSMutableArray arrayWithArray:self.viewControllers] firstObject]];
    [array addObject:viewController];
    
    viewController.hidesBottomBarWhenPushed = YES;
    self.interactivePopGestureRecognizer.delegate = (id)self;
    
    [self setViewControllers:array animated:YES];
}

@end
