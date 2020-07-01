//
//  LYThemeManager.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LYThemeKitPotocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYThemeManager : NSObject

@property(nonatomic,strong,readonly)NSObject<LYThemeProtocol> * theme;

+(void)regesterWithTheme:(NSObject<LYThemeProtocol> *)theme;

+(LYThemeManager *)themeManager;

- (void)addCmd:(id<LYThemeProtocol>)cmd;
- (void)removeCmd:(id<LYThemeProtocol>)cmd;

@end

NS_ASSUME_NONNULL_END
