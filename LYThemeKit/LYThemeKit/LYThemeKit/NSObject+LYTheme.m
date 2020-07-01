//
//  NSObject+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "NSObject+LYTheme.h"
#import <objc/runtime.h>

static void *DKViewDeallocHelperKey;

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
@end
