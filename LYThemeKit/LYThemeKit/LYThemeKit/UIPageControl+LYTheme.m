//
//  UIPageControl+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UIPageControl+LYTheme.h"
#import "NSObject+LYTheme.h"
@implementation UIPageControl (LYTheme)
- (void)ly_pageIndicatorTintColor:(NSArray *)colors
{
    SEL sel = @selector(setPageIndicatorTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_currentPageIndicatorTintColor:(NSArray *)colors
{
    SEL sel = @selector(setCurrentPageIndicatorTintColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}

@end
