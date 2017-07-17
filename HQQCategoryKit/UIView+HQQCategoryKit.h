//
//  UIView+HQQCategoryKit.h
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import <UIKit/UIKit.h>

@interface UIView (HQQCategoryKit)

@property (nonatomic, assign) CGFloat hqq_x;
@property (nonatomic, assign) CGFloat hqq_y;
@property (nonatomic, assign) CGFloat hqq_centerX;
@property (nonatomic, assign) CGFloat hqq_centerY;
@property (nonatomic, assign) CGFloat hqq_width;
@property (nonatomic, assign) CGFloat hqq_height;
@property (nonatomic, assign) CGSize hqq_size;
@property (nonatomic, assign) CGPoint hqq_origin;

/**
 *  形状变圆
 */
- (void)hqq_toRound;

/**
 *  设置边框,block里传3个参数
 *
 *  @param borderWidth  宽度
 *  @param borderColor  颜色
 *  @param cornerRadius 圆角
 */
@property (nonatomic, copy) void (^hqq_border)(CGFloat borderWidth, UIColor *borderColor, CGFloat cornerRadius);

@property (nonatomic) CGFloat hqq_left;
@property (nonatomic) CGFloat hqq_top;
@property (nonatomic) CGFloat hqq_right;
@property (nonatomic) CGFloat hqq_bottom;

- (void)hqq_topAdd:(CGFloat)add;
- (void)hqq_leftAdd:(CGFloat)add;
- (void)hqq_widthAdd:(CGFloat)add;
- (void)hqq_heightAdd:(CGFloat)add;

#pragma mark - present a view
- (void)hqq_presentView:(UIView*)view animate:(BOOL)animate;
- (void)hqq_dismissPresentView;

@end
