//
//  UIView+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+LYTheme.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIView (LYTheme)<LYThemeCmdProtocol>

-(void)setThemeBackGroundColor:(NSArray<UIColor *> *)color;
- (void)setThemeTintColor:(NSArray<UIColor *> *)color;

@end

NS_ASSUME_NONNULL_END
