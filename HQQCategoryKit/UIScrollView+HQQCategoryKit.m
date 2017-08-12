//
//  UIScrollView+HQQCategoryKit.m
//  Pods
//
//  Created by 黄强强 on 2017/8/12.
//
//

#import <Foundation/Foundation.h>

@implementation UIScrollView (HQQCategoryKit)

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (![self isMemberOfClass:[UIScrollView class]]) {
        
    } else {
        [[self nextResponder] touchesBegan:touches withEvent:event];
        if ([super respondsToSelector:@selector(touchesBegan:withEvent:)]) {
            [super touchesBegan:touches withEvent:event];
        }
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (![self isMemberOfClass:[UIScrollView class]]) {
        
    } else {
        [[self nextResponder] touchesMoved:touches withEvent:event];
        if ([super respondsToSelector:@selector(touchesMoved:withEvent:)]) {
            [super touchesMoved:touches withEvent:event];
        }
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (![self isMemberOfClass:[UIScrollView class]]) {
        
    } else {
        [[self nextResponder] touchesEnded:touches withEvent:event];
        if ([super respondsToSelector:@selector(touchesBegan:withEvent:)]) {
            [super touchesEnded:touches withEvent:event];
        }
    }
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (![self isMemberOfClass:[UIScrollView class]]) {
        
    } else {
        [[self nextResponder] touchesCancelled:touches withEvent:event];
        if ([super respondsToSelector:@selector(touchesCancelled:withEvent:)]) {
            [super touchesCancelled:touches withEvent:event];
        }
    }
}

@end
