//
//  NSString+HQQCategoryKit.m
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import "NSString+HQQCategoryKit.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (HQQCategoryKit)

- (CGRect)hqq_rectWithFont:(UIFont *)font
{
    return [self hqq_rectWithFont:font maxWidth:[UIScreen mainScreen].bounds.size.width - 20];
}

- (CGRect)hqq_rectWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth
{
    return [self hqq_rectWithFont:font maxWidth:maxWidth maxHeight:MAXFLOAT];
}

- (CGRect)hqq_rectWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth maxHeight:(CGFloat)maxHeight
{
    CGSize maxSize = CGSizeMake(maxWidth, maxHeight);
    CGRect frame = [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    
    return frame;
}

- (NSDictionary *)hqq_stringToDictionary
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *dict = nil;
    
    if (!data) return nil;
    
    dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    if (![dict isKindOfClass:[NSDictionary class]]) return nil;
    
    return dict;
}


- (NSString *)hqq_MD5String {
    const char *cstr = [self UTF8String];
    unsigned char result[16];
    CC_MD5(cstr, (CC_LONG)strlen(cstr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
