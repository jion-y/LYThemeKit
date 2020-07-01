//
//  UITextField+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UITextField+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UITextField (LYTheme)
- (void)ly_textColor:(NSArray *)colors
{
    SEL sel = @selector(setTextColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
@end
