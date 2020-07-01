//
//  UIProgressView+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UIProgressView+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UIProgressView (LYTheme)
- (void)ly_progressTintColor:(NSArray *)colors
{
    SEL sel = @selector(setProgressTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_trackTintColor:(NSArray *)colors
{
    SEL sel = @selector(setTrackTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
@end
