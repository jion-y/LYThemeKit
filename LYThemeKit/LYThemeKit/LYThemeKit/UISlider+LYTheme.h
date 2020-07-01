//
//  UISlider+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISlider (LYTheme)
- (void)ly_minimumTrackTintColor:(NSArray *)colors;
- (void)ly_maximumTrackTintColor:(NSArray *)colors;
- (void)ly_thumbTintColor:(NSArray *)colors;
@end

NS_ASSUME_NONNULL_END
