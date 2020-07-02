//
//  LYConfigCmd.m
//  LYThemeKit
//
//  Created by anita on 2020/7/2.
//  Copyright © 2020 anita. All rights reserved.
//

#import "LYConfigColorCmd.h"
#import "LYThemeManager.h"
#import "UIColor+LYTheme.h"

@implementation LYBaseConfigCmd
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
-(void)execute
{
    NSLog(@"子类重写该方法");
}
@end
@implementation LYConfigColorCmd
-(void)execute
{
    NSString * obj = (NSString *)[self getThemeValue];
    NSAssert(!obj, @"not foud path for current config");
    UIColor * color = [[UIColor alloc] initWithRGB:obj];
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        if (self.target)
        {
            if ([self.target respondsToSelector:self.sel])
            {
                [self.target performSelector:self.sel withObject:color];
            }
            else
            {
                NSString * msg = [NSString stringWithFormat:@"target not found sel %@",NSStringFromSelector(self.sel)];
                NSAssert(NO, msg);
            }
        }
    #pragma clang diagnostic pop
}
@end
