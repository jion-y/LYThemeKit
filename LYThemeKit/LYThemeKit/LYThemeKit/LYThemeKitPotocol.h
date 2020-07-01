//
//  LYThemeKitPotocol.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol LYThemeProtocol<NSObject>
/// 当前显示的主题
@property (assign, nonatomic) NSInteger currentShowThemeIndex;


@end

@protocol LYThemeCmdProtocol <NSObject>

- (void)runCmdWithThemeIndex:(NSInteger)index;

@end
