//
//  UITableView+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UITableView+LYTheme.h"
#import "NSObject+LYTheme.h"

@implementation UITableView (LYTheme)
- (void)ly_sectionIndexColor:(NSArray *)colors
{
    SEL sel = @selector(setSectionIndexColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_sectionIndexBackgroundColor:(NSArray *)colors
{
    SEL sel  = @selector(setSectionIndexBackgroundColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_sectionIndexTrackingBackgroundColor:(NSArray *)colors
{
    SEL sel = @selector(setSectionIndexTrackingBackgroundColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
- (void)ly_separatorColor:(NSArray *)colors
{
    SEL sel = @selector(setSeparatorColor:);
    [self registerCmdWithTheme:colors withSel:sel];
}
@end
