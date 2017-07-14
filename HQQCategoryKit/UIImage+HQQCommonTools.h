//
//  UIImage+HQQCommonTools.h
//  HQQCommonToolsExemple
//
//  Created by 黄强强 on 16/7/11.
//  Copyright © 2016年 黄强强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HQQCommonTools)


/**
 *  图片拉伸
 *
 *  @param name 图片名
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)hqq_resizedImageWithNamed:(NSString *)name;

/**
 *  代码创建1*1像素的图片：根据color创建一个纯色的UIImage
 */
+ (UIImage *)hqq_imageWithColor:(UIColor *)color;

#pragma mark - 图片压缩
/**
 *  自定义图片压缩后的尺寸
 *
 *  @param image  原图
 *  @param reSize 压缩后的大小
 *
 *  @return 压缩后的图片
 */
+ (UIImage *)hqq_reSizeImage:(UIImage *)image toSize:(CGSize)reSize;

/**
 *  自定义图片压缩后的宽度，等比压缩
 *
 *  @param sourceImage 原图
 *  @param defineWidth 压缩后的宽度
 *
 *  @return 压缩后的图片
 */
+ (UIImage *)hqq_imageCompressForWidth:(UIImage *)sourceImage targetWidth:(CGFloat)defineWidth;

/**
 *  对图片做高斯模糊
 *
 *  @param sourceImage 原图片
 *  @param blurRadius  模糊半径
 */
+ (UIImage *)hqq_blurImageWithImage:(UIImage *)sourceImage blurRadius:(CGFloat)blurRadius;

/**
 *  截取当前屏幕
 */
+ (UIImage *)hqq_captureScreen;

@end
