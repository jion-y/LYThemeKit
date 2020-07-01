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

+(void)regesterWithTheme:(NSObject<LYThemeProtocol>)theme;

+(LYThemeManager *)themeManager;

@property(nonatomic,strong,readonly)NSObject<LYThemeProtocol> theme;

@end

NS_ASSUME_NONNULL_END
