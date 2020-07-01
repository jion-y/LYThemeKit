//
//  NSObject+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "NSObject+LYTheme.h"
#import <objc/runtime.h>
#import "LYActionCmd.h"
#import "LYThemeManager.h"
@interface NSObject()
@property(nonatomic,strong)NSMutableDictionary<NSString *,id<LYThemeCmdProtocol>> * cmdMap;
@end

@implementation NSObject (LYTheme)

- (NSMutableDictionary<NSString *,id<LYThemeCmdProtocol>> *)cmdMap
{
    NSMutableDictionary<NSString *, id<LYThemeCmdProtocol>> *cmds = objc_getAssociatedObject(self, @selector(cmdMap));
    if (!cmds)
    {
        cmds = [[NSMutableDictionary alloc] init];
        objc_setAssociatedObject(self, @selector(cmdMap), cmds, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return cmds;
}
- (void)runCmdWithThemeIndex:(NSInteger)index
{
    NSArray * cmds = [self.cmdMap allValues];
    for (id<LYThemeCmdProtocol>  cmd in cmds)
    {
        [cmd runCmdWithThemeIndex:index];
    }
}
- (void)registerActionCmd:(id<LYThemeCmdProtocol>)cmd forKey:(NSString *)key
{
    [self.cmdMap setObject:cmd forKey:key];
    [cmd runCmdWithThemeIndex: [LYThemeManager themeManager].theme.currentShowThemeIndex];
    [[LYThemeManager themeManager] addCmd:self];
}
- (void)registerCmdWithTheme:(NSArray *)element withSel:(SEL)sel
{
    LYActionCmd * cmd = [[LYActionCmd alloc] initWith:element target:self sel:sel];
    NSString * selStr = NSStringFromSelector(sel);
    [self registerActionCmd:cmd forKey:selStr];
}
@end
