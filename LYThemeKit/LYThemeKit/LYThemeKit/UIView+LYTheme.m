//
//  UIView+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UIView+LYTheme.h"
#import "NSObject+LYTheme.h"
#import "LYActionCmd.h"
#import "LYThemeManager.h"
@interface NSObject()
@property(nonatomic,strong)NSMutableDictionary<NSString *,id<LYThemeCmdProtocol>> * cmdMap;
@end
@implementation UIView (LYTheme)

-(void)setThemeBackGroundColor:(NSArray<UIColor *> *)color
{
    SEL sel = @selector(setBackgroundColor:);
    LYBackgroundCmd * cmd = [[LYBackgroundCmd alloc] initWith:color target:self sel:sel];
    NSString * selStr = NSStringFromSelector(sel);
    [self.cmdMap setObject:cmd forKey:selStr];
    [cmd runCmdWithThemeIndex: [LYThemeManager themeManager].theme.currentShowThemeIndex];
    
    [[LYThemeManager themeManager] addCmd:self];
}

@end
