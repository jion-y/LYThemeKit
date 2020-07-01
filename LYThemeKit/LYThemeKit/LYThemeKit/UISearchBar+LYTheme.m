//
//  UISearchBar+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UISearchBar+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UISearchBar (LYTheme)
- (void)ly_barTintColor:(NSArray *)colors
{
    SEL sel = @selector(setBarTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
@end
