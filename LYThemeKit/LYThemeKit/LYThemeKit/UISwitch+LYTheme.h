//
//  UISwitch+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISwitch (LYTheme)

- (void)ly_onTintColor:(NSArray *)colors;
- (void)ly_thumbTintColor:(NSArray *)colors;
- (void)ly_onImage:(NSArray *)images;
- (void)ly_offImage:(NSArray *)images;

@end

NS_ASSUME_NONNULL_END
