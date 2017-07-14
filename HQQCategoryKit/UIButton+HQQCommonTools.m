//
//  UIButton+HQQCommonTools.m
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import "UIButton+HQQCommonTools.h"

@implementation UIButton (HQQCommonTools)

- (CGFloat)hqq_cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setHqq_cornerRadius:(CGFloat)hqq_cornerRadius
{
    self.layer.cornerRadius = hqq_cornerRadius;
    self.clipsToBounds = YES;
}

- (NSString *)hqq_title
{
    return self.titleLabel.text;
}

- (void)setHqq_title:(NSString *)hqq_title
{
    [self setTitle:hqq_title forState:UIControlStateNormal];
}

- (void)setHqq_highlightTitle:(NSString *)hqq_highlightTitle
{
    [self setTitle:hqq_highlightTitle forState:UIControlStateHighlighted];
}

- (NSString *)hqq_selectedTitle
{
    return self.titleLabel.text;
}

- (void)setHqq_selectedTitle:(NSString *)hqq_selectedTitle
{
    [self setTitle:hqq_selectedTitle forState:UIControlStateSelected];
}

- (NSString *)hqq_disableTitle
{
    return self.titleLabel.text;
}

- (void)setHqq_disableTitle:(NSString *)hqq_disableTitle
{
    [self setTitle:hqq_disableTitle forState:UIControlStateDisabled];
}

- (UIColor *)hqq_titleColor
{
    return self.titleLabel.textColor;
}

- (void)setHqq_titleColor:(UIColor *)hqq_titleColor
{
    [self setTitleColor:hqq_titleColor forState:UIControlStateNormal];
}

- (void)setHqq_selectedTitleColor:(UIColor *)hqq_selectedTitleColor
{
    [self setTitleColor:hqq_selectedTitleColor forState:UIControlStateSelected];
}

- (void)setHqq_highlightTitleColor:(UIColor *)hqq_highlightTitleColor
{
    [self setTitleColor:hqq_highlightTitleColor forState:UIControlStateHighlighted];
}

- (UIImage *)hqq_image
{
    return self.imageView.image;
}

- (void)setHqq_image:(UIImage *)hqq_image
{
    [self setImage:hqq_image forState:UIControlStateNormal];
}

- (UIImage *)hqq_highlightImage
{
    return self.imageView.image;
}

- (void)setHqq_highlightImage:(UIImage *)hqq_highlightImage
{
    [self setImage:hqq_highlightImage forState:UIControlStateHighlighted];
}

- (UIImage *)hqq_selectedImage
{
    return self.imageView.image;
}

- (void)setHqq_selectedImage:(UIImage *)hqq_selectedImage
{
    [self setImage:hqq_selectedImage forState:UIControlStateSelected];
}

- (UIFont *)hqq_font
{
    return self.titleLabel.font;
}

- (void)setHqq_font:(UIFont *)hqq_font
{
    self.titleLabel.font = hqq_font;
}

- (void)hqq_addTarget:(id)target action:(SEL)action
{
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

- (void)hqq_setBackgroundImage:(UIImage *)image
{
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

- (void)hqq_setSelectedBackgroundImage:(UIImage *)image
{
    [self setBackgroundImage:image forState:UIControlStateSelected];
}

- (void)hqq_setDisableBackgroundImage:(UIImage *)image
{
    [self setBackgroundImage:image forState:UIControlStateDisabled];
}

- (NSTextAlignment)hqq_textAlignment
{
    return self.titleLabel.textAlignment;
}

- (void)hqq_setTextAlignment:(NSTextAlignment)textAlignment
{
    self.titleLabel.textAlignment = textAlignment;
}


@end
