//
//  UITextView+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UITextView+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UITextView (LYTheme)
- (void)ly_textColor:(NSArray *)colors
{
    SEL sel = @selector(setTextColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
@end
