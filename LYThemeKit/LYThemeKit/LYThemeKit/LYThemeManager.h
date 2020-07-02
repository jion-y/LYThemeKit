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

@interface LYThemeManager : NSObject<LYThemeCmdProtocol>

@property(nonatomic,strong,readonly)NSObject<LYThemeProtocol> * theme;

+(void)regesterWithTheme:(NSObject<LYThemeProtocol> *)theme;

+(LYThemeManager *)themeManager;

- (NSInteger)themeIndex;
- (NSDictionary *)themeConfigDic;
- (void)addCmd:(id<LYThemeCmdProtocol>)cmd;
- (void)removeCmd:(id<LYThemeCmdProtocol>)cmd;

@end

NS_ASSUME_NONNULL_END
