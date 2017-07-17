//
//  UIView+HQQCategoryKit.m
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import "UIView+HQQCategoryKit.h"
#import <objc/runtime.h>

@implementation UIView (HQQCategoryKit)

- (void)setHqq_x:(CGFloat)hqq_x
{
    CGRect frame = self.frame;
    frame.origin.x = hqq_x;
    self.frame = frame;
}

- (void)setHqq_y:(CGFloat)hqq_y
{
    CGRect frame = self.frame;
    frame.origin.y = hqq_y;
    self.frame = frame;
}

- (CGFloat)hqq_x
{
    return self.frame.origin.x;
}

- (CGFloat)hqq_y
{
    return self.frame.origin.y;
}

- (void)setHqq_centerX:(CGFloat)hqq_centerX
{
    CGPoint center = self.center;
    center.x = hqq_centerX;
    self.center = center;
}

- (CGFloat)hqq_centerX
{
    return self.center.x;
}

- (void)setHqq_centerY:(CGFloat)hqq_centerY
{
    CGPoint center = self.center;
    center.y = hqq_centerY;
    self.center = center;
}

- (CGFloat)hqq_centerY
{
    return self.center.y;
}

- (void)setHqq_width:(CGFloat)hqq_width
{
    CGRect frame = self.frame;
    frame.size.width = hqq_width;
    self.frame = frame;
}

- (void)setHqq_height:(CGFloat)hqq_height
{
    CGRect frame = self.frame;
    frame.size.height = hqq_height;
    self.frame = frame;
}

- (CGFloat)hqq_height
{
    return self.frame.size.height;
}

- (CGFloat)hqq_width
{
    return self.frame.size.width;
}

- (void)setHqq_size:(CGSize)hqq_size
{
    CGRect frame = self.frame;
    frame.size = hqq_size;
    self.frame = frame;
}

- (CGSize)hqq_size
{
    return self.frame.size;
}

- (void)setHqq_origin:(CGPoint)hqq_origin
{
    CGRect frame = self.frame;
    frame.origin = hqq_origin;
    self.frame = frame;
}

- (CGPoint)hqq_origin
{
    return self.frame.origin;
}

- (void)hqq_toRound
{
    self.layer.cornerRadius = self.frame.size.width * 0.5;
    self.layer.masksToBounds = YES;
}

- (void (^)(CGFloat, UIColor *, CGFloat))hqq_border
{
    return ^(CGFloat borderWidth, UIColor *borderColor, CGFloat cornerRadius){
        self.layer.borderWidth = borderWidth;
        self.layer.borderColor = borderColor.CGColor;
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
    };
}

//新加
- (CGFloat)hqq_left
{
    return self.frame.origin.x;
}

- (void)setHqq_left:(CGFloat)hqq_left
{
    CGRect frame = self.frame;
    frame.origin.x = hqq_left;
    self.frame = frame;
}

- (void)hqq_leftAdd:(CGFloat)add
{
    CGRect frame = self.frame;
    frame.origin.x += add;
    self.frame = frame;
}

- (CGFloat)hqq_top
{
    return self.frame.origin.y;
}

- (void)setHqq_top:(CGFloat)hqq_top
{
    CGRect frame = self.frame;
    frame.origin.y = hqq_top;
    self.frame = frame;
}

- (void)hqq_topAdd:(CGFloat)add
{
    CGRect frame = self.frame;
    frame.origin.y += add;
    self.frame = frame;
}


- (CGFloat)hqq_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setHqq_right:(CGFloat)hqq_right
{
    CGRect frame = self.frame;
    frame.origin.x = hqq_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)hqq_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)hqq_setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)hqq_widthAdd:(CGFloat)add
{
    CGRect frame = self.frame;
    frame.size.width += add;
    self.frame = frame;
}

- (void)hqq_heightAdd:(CGFloat)add
{
    CGRect frame = self.frame;
    frame.size.height += add;
    self.frame = frame;
}



#pragma mark - Animation

static char presentViewAddress;   //被Present的View
static char presentCoverAddress;   //被Present的cover
#define PresentViewAnimateDuartion 0.5f

- (void)hqq_presentView:(UIView *)view animate:(BOOL)animate
{
    if (!self.window) return;
    
    UIButton *cover = [[UIButton alloc] initWithFrame:self.window.bounds];
    [cover addTarget:self action:@selector(dismissPresentView) forControlEvents:UIControlEventTouchUpInside];
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.5f;
    
    [self.window addSubview:cover];
    [self.window addSubview:view];
    objc_setAssociatedObject(self, &presentViewAddress, view, OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self, &presentCoverAddress, cover, OBJC_ASSOCIATION_RETAIN);
    
    if (animate) {
        [self doAlertAnimation:view];
        view.center = self.window.center;
    }else{
        view.center = self.window.center;
    }
}

- (void)doAlertAnimation:(UIView *)view
{
    CAKeyframeAnimation *anim = [CAKeyframeAnimation animation];
    
    // 设置动画属性
    anim.keyPath = @"transform.scale";
    anim.duration = PresentViewAnimateDuartion;
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anim.removedOnCompletion = NO;
    anim.fillMode = kCAFillModeForwards;
    
    NSValue *v1 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)];
    NSValue *v2 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.05, 1.05, 1.0)];
    NSValue *v3 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)];
    anim.values = @[v1,v2,v3];
    
    [view.layer addAnimation:anim forKey:nil];
}

- (void)hqq_dismissPresentView
{
    UIView *view = objc_getAssociatedObject(self, &presentViewAddress);
    UIButton *cover = objc_getAssociatedObject(self, &presentCoverAddress);
    [view removeFromSuperview];
    [cover removeFromSuperview];
    
    [self cleanAssocaiteObject];
}

- (void)cleanAssocaiteObject
{
    objc_setAssociatedObject(self,&presentViewAddress,nil,OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self,&presentCoverAddress, nil, OBJC_ASSOCIATION_RETAIN);
}

@end
