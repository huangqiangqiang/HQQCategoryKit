//
//  NSDictionary+Extension.m
//  RenShineDoctor
//
//  Created by 黄强强 on 15/12/2.
//  Copyright © 2015年 杭州岐黄信息技术有限公司. All rights reserved.
//

#import "NSDictionary+HQQCommonTools.h"

@implementation NSDictionary (HQQCommonTools)

- (NSString *)hqq_dictToString
{
    if (self == nil) return nil;
    
    NSString *jsonString = nil;
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
}

@end
