//
//  UIProgressView+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIProgressView (LYTheme)
- (void)ly_progressTintColor:(NSArray *)colors;
- (void)ly_trackTintColor:(NSArray *)colors;
@end

NS_ASSUME_NONNULL_END
