//
//  UILabel+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UILabel (LYTheme)

- (void)ly_textColor:(NSArray *)color;
- (void)ly_font:(NSArray *)fonts;
- (void)ly_shadowColor:(NSArray *)color;
- (void)ly_highlightedTextColor:(NSArray *)color;
@end

NS_ASSUME_NONNULL_END
