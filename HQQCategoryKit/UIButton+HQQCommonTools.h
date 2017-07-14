//
//  UIButton+HQQCommonTools.h
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (HQQCommonTools)


@property (nonatomic, copy) NSString *hqq_title;
@property (nonatomic, copy) NSString *hqq_highlightTitle;
@property (nonatomic, copy) NSString *hqq_selectedTitle;
@property (nonatomic, copy) NSString *hqq_disableTitle;

@property (nonatomic, strong) UIColor *hqq_titleColor;
@property (nonatomic, strong) UIColor *hqq_selectedTitleColor;
@property (nonatomic, strong) UIColor *hqq_highlightTitleColor;

@property (nonatomic, strong) UIImage *hqq_image;
@property (nonatomic, strong) UIImage *hqq_highlightImage;
@property (nonatomic, strong) UIImage *hqq_selectedImage;
@property (nonatomic, strong) UIFont *hqq_font;

@property (nonatomic, assign) NSTextAlignment hqq_textAlignment;
@property (nonatomic, assign) CGFloat hqq_cornerRadius;

- (void)hqq_addTarget:(id)target action:(SEL)action;
- (void)hqq_setBackgroundImage:(UIImage *)image;
- (void)hqq_setSelectedBackgroundImage:(UIImage *)image;
- (void)hqq_setDisableBackgroundImage:(UIImage *)image;


@end
