//
//  UINavigationBar+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol LYThemeCmdProtocol;
NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (LYTheme)<LYThemeCmdProtocol>
- (void)ly_barTintColor:(NSArray *)colors;
@end

NS_ASSUME_NONNULL_END
