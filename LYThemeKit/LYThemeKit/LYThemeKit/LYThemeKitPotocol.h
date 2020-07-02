//
//  LYThemeKitPotocol.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LYThemeCmdProtocol <NSObject>

- (void)execute;

@end

@protocol LYThemeProtocol<NSObject>
/// 当前显示的主题
@property (assign, nonatomic) NSInteger currentShowThemeIndex;

/// 从配置文件中加载出来的当前主题
@property (strong,nonatomic) NSDictionary * configDic;

/// 这个属性 放置的是 LYThemeManager 对象。 请忽自行赋值
@property (weak,nonatomic)id<LYThemeCmdProtocol> themeCmd;

@end
