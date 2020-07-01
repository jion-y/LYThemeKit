//
//  UIToolbar+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UIToolbar+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UIToolbar (LYTheme)
- (void)set_barTintColor:(NSArray *)colors
{
    SEL sel = @selector(setBarTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
@end
