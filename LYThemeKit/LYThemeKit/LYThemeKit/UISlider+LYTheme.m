//
//  UISlider+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UISlider+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UISlider (LYTheme)
- (void)ly_minimumTrackTintColor:(NSArray *)colors
{
    SEL sel = @selector(setMinimumTrackTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_maximumTrackTintColor:(NSArray *)colors
{
    SEL sel = @selector(setMaximumTrackTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_thumbTintColor:(NSArray *)colors
{
    SEL sel = @selector(setThumbTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
@end
