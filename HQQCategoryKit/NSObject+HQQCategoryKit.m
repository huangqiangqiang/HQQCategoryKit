//
//  NSObject+HQQCategoryKit.m
//  HQQCategoryKit
//
//  Created by 黄强强 on 2017/9/28.
//

#import "NSObject+HQQCategoryKit.h"
#import <objc/runtime.h>

@implementation NSObject (HQQCategoryKit)


+ (void)getIvarName
{
    unsigned int count = 0;
    //拷贝出所有的成员变量的列表
    Ivar *ivars = class_copyIvarList([UIBarButtonItem class], &count);
    for (int i = 0; i<count; i++) {
        //取出成员变量
        Ivar var = *(ivars + i);
        
        //打印成员变量名字
        NSLog(@"%s",ivar_getName(var));
    }
    
    //释放
    free(ivars);
}

@end
