//
//  UIColor+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/2.
//  Copyright © 2020 anita. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (LYTheme)
- (instancetype)initWithHex3:(uint16_t)hex3 alpha:(CGFloat)alpha;
- (instancetype)initWithHex4:(uint16_t)hex4;
- (instancetype)initWithHex6:(uint32_t)hex6 alpha:(CGFloat)alpha;
- (instancetype)initWithHex8:(uint32_t)hex8;

- (instancetype)initWithRGB:(NSString *)rgb;
- (NSString *)hexString:(BOOL)includeAlpha;
@end

NS_ASSUME_NONNULL_END
