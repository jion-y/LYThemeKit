//
//  NSObject+LYTheme.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LYThemeKitPotocol.h"
@class LYActionCmd;
NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LYTheme)<LYThemeCmdProtocol>

- (void)registerActionCmd:(id<LYThemeCmdProtocol>)cmd forKey:(NSString *)key;

- (void)registerCmdWithTheme:(NSArray *)element withSel:(SEL)sel;
@end

NS_ASSUME_NONNULL_END
