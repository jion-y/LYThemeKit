//
//  LYConfigCmd.h
//  LYThemeKit
//
//  Created by anita on 2020/7/2.
//  Copyright © 2020 anita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LYThemeKitPotocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYBaseConfigCmd : NSObject<LYThemeCmdProtocol>
@property(nonatomic,strong)NSString * themKey;
@property(nonatomic,assign)SEL sel;
@property(nonatomic,weak)NSObject * target;

- (NSObject *)getThemeValue;
@end
@interface LYConfigColorCmd :LYBaseConfigCmd

@end

NS_ASSUME_NONNULL_END
