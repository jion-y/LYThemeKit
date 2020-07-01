//
//  UISwitch+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UISwitch+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UISwitch (LYTheme)
- (void)ly_onTintColor:(NSArray *)colors
{
    SEL sel = @selector(setOnTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_thumbTintColor:(NSArray *)colors
{
    SEL sel = @selector(setThumbTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_onImage:(NSArray *)images
{
    SEL sel = @selector(setOnImage:);
    [self registerCmdWithTheme:images withSel:sel];
}
- (void)ly_offImage:(NSArray *)images
{
    SEL sel = @selector(setOffImage:);
    [self registerCmdWithTheme:images withSel:sel];
}
@end
