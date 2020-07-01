//
//  UITabBar+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBar (LYTheme)
- (void)ly_barTintColor:(NSArray *)colors;
- (void)ly_unselectedItemTintColor:(NSArray *)color;
@end

NS_ASSUME_NONNULL_END
