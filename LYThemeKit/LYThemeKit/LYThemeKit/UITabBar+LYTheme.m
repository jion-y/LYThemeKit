//
//  UITabBar+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UITabBar+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UITabBar (LYTheme)
- (void)ly_barTintColor:(NSArray *)colors
{
    SEL sel = @selector(setBarTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_unselectedItemTintColor:(NSArray *)color
{
    SEL sel = @selector(setUnselectedItemTintColor:);
    [self registerCmdWithTheme:color withSel:sel];
}
@end
