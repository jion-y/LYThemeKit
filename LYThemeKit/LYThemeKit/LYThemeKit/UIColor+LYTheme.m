//
//  UIColor+LYTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/2.
//  Copyright © 2020 anita. All rights reserved.
//

#import "UIColor+LYTheme.h"

@implementation UIColor (LYTheme)
- (instancetype)initWithHex3:(uint16_t)hex3 alpha:(CGFloat)alpha
{
    CGFloat divisor = 15.0f;
    CGFloat red = ((hex3 & 0xF00) >> 8)/divisor;
    CGFloat green = ((hex3 & 0x0F0) >> 4)/divisor;
    CGFloat blue = ((hex3 & 0x00F) )/divisor;
    if (@available(iOS 10.0, *))
    {
        return [self initWithDisplayP3Red:red green:green blue:blue alpha:alpha];
    } else
    {
        return [self initWithRed:red green:green blue:blue alpha:alpha];
    }
}
- (instancetype)initWithHex4:(uint16_t)hex4
{
    CGFloat divisor = 15.0f;
    CGFloat red =  ((hex4 & 0xF000) >> 16) / divisor;
    CGFloat green = ((hex4 & 0x0F00) >>  8) / divisor;
    CGFloat blue = ((hex4 & 0x00F0) >>  4) / divisor;
    CGFloat alpha = ( hex4 & 0x000F       ) / divisor;
    if (@available(iOS 10.0, *))
    {
        return [self initWithDisplayP3Red:red green:green blue:blue alpha:alpha];
    } else
    {
        return [self initWithRed:red green:green blue:blue alpha:alpha];
    }
}
- (instancetype)initWithHex6:(uint32_t)hex6 alpha:(CGFloat)alpha
{
    CGFloat divisor = 255.0f;
    CGFloat red =  ((hex6 & 0xFF0000) >> 16) / divisor;
    CGFloat green = ((hex6 & 0x00FF00) >>  8) / divisor;
    CGFloat blue = (hex6 & 0x0000FF) / divisor;
    if (@available(iOS 10.0, *))
    {
        return [self initWithDisplayP3Red:red green:green blue:blue alpha:alpha];
    } else
    {
        return [self initWithRed:red green:green blue:blue alpha:alpha];
    }
}
- (instancetype)initWithHex8:(uint32_t)hex8
{
    CGFloat divisor = 255.0f;
    CGFloat red =  ((hex8 & 0xFF000000) >> 16) / divisor;
    CGFloat green = ((hex8 & 0x00FF0000) >>  8) / divisor;
    CGFloat blue = ((hex8 & 0x0000FF00) >>  4) / divisor;
    CGFloat alpha = ( hex8 & 0x000000FF) / divisor;
    if (@available(iOS 10.0, *))
    {
        return [self initWithDisplayP3Red:red green:green blue:blue alpha:alpha];
    } else
    {
        return [self initWithRed:red green:green blue:blue alpha:alpha];
    }
}
- (instancetype)initWithRGB:(NSString *)rgb
{
    if (![rgb hasPrefix:@"#"])
    {
        return  nil;
    }
    NSString * hexString = [rgb substringFromIndex:1];
    uint32_t hexValue = 0;
    NSScanner * scanner = [[NSScanner alloc] initWithString:hexString];
    [scanner scanHexInt:&hexValue];
    switch (hexString.length) {
        case 3:
            return [self initWithHex3:hexValue alpha:1];
            break;
          case 4:
            return [self initWithHex4:hexValue];
            break;
        case 6:
            return [self initWithHex6:hexValue alpha:1];
            break;
        case 8:
            return [self initWithHex8:hexValue];
            break;
        default:
            break;
    }
    return nil;
}
- (NSString *)hexString:(BOOL)includeAlpha
{
    CGFloat r = 0.0f;
    CGFloat g = 0.0f;
    CGFloat b = 0.0f;
    CGFloat a = 0.0f;
    [self getRed:&r green:&g blue:&b alpha:&a];
    if (includeAlpha)
    {
        return [NSString stringWithFormat:@"#%02X%02X%02X%02X",
                (int)(r * 255),(int)(g * 255),(int)(b * 255),(int)(a * 255)];
    } else
    {
        return [NSString stringWithFormat:@"%02X%02X%02X",
                (int)(r * 255),(int)(g * 255),(int)(b * 255)];
    }
}
@end
