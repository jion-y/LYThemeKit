//
//  LYConfigCmd.m
//  LYThemeKit
//
//  Created by anita on 2020/7/2.
//  Copyright © 2020 anita. All rights reserved.
//

#import "LYConfigCmd.h"
#import "LYThemeManager.h"
@implementation LYConfigCmd
-(void)execute
{
    NSObject * obj = [self getThemeValue];
    NSAssert(!obj, @"not foud path for current config");
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        if (self.target)
        {
            if ([self.target respondsToSelector:self.sel])
            {
                [self.target performSelector:self.sel withObject:obj];
            }
            else
            {
                NSString * msg = [NSString stringWithFormat:@"target not found sel %@",NSStringFromSelector(self.sel)];
                NSAssert(NO, msg);
            }
        }
    #pragma clang diagnostic pop
}
- (NSObject *)getThemeValue
{
   __block NSObject * themeObj;
    NSDictionary * dic =  [[LYThemeManager themeManager] themeConfigDic];
    NSArray<NSString *> * array = [self.themKey componentsSeparatedByString:@"."];
    if (array.count > 0)
    {
       __block NSDictionary * preDic = dic;
        
        [array enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (idx != array.count - 1)
            {
                themeObj = preDic[obj];
            }
            else
            {
                NSDictionary * valueDic = preDic[obj];
                if (valueDic) {
                    preDic = valueDic;
                }
                else
                {
                    NSLog(@"key = %@ not foud value",obj);
                    *stop = YES;
                }
            }
        }];
    }
    return themeObj;
}
@end
