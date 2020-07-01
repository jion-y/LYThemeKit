//
//  UIView+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UIView+LYTheme.h"
#import "LYActionCmd.h"
#import "LYThemeManager.h"
@interface NSObject()
@property(nonatomic,strong)NSMutableDictionary<NSString *,id<LYThemeCmdProtocol>> * cmdMap;
@end
@implementation UIView (LYTheme)

-(void)setThemeBackGroundColor:(NSArray<UIColor *> *)color
{
    SEL sel = @selector(setBackgroundColor:);
    [self registerCmdWithTheme:color withSel:sel];
}

- (void)setThemeTintColor:(NSArray<UIColor *> *)color
{
    SEL sel = @selector(setTintColor:);
    [self registerCmdWithTheme:color withSel:sel];
}
@end
