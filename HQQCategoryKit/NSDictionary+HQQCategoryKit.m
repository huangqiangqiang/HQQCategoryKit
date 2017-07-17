//
//  NSDictionary+HQQCategoryKit.m
//  Pods
//
//  Created by 黄强强 on 2017/7/17.
//
//

#import "NSDictionary+HQQCategoryKit.h"

@implementation NSDictionary (HQQCategoryKit)

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
