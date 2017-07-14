//
//  UINavigationController+HQQCommonTools.m
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import "UINavigationController+HQQCommonTools.h"

@implementation UINavigationController (HQQCommonTools)

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
