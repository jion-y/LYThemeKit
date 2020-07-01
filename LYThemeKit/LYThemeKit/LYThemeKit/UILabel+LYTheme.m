//
//  UILabel+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UILabel+LYTheme.h"
#import "NSObject+LYTheme.h"
#import "LYActionCmd.h"

@implementation UILabel (LYTheme)
- (void)ly_textColor:(NSArray *)color
{
    SEL sel = @selector(setTextColor:);
    [self registerCmdWithTheme:color withSel:sel];
}
- (void)ly_font:(NSArray *)fonts
{
    SEL sel = @selector(setFont:);
    [self registerCmdWithTheme:fonts withSel:sel];
}
- (void)ly_shadowColor:(NSArray *)color
{
    SEL sel = @selector(setShadowColor:);
    [self registerCmdWithTheme:color withSel:sel];
}
- (void)ly_highlightedTextColor:(NSArray *)color
{
    SEL sel = @selector(setHighlightedTextColor:);
    [self registerCmdWithTheme:color withSel:sel];
}
@end
