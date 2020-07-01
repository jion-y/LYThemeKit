//
//  LYActionCmd.h
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LYThemeKitPotocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYActionCmd : NSObject<LYThemeCmdProtocol>
@property(nonatomic,strong)NSArray * themeElems;
@property(nonatomic,assign)SEL sel;
@property(nonatomic,weak)NSObject * target;

- (instancetype)initWith:(NSArray *)themes
                  target:(id)target
                     sel:(SEL)sel;
@end
@interface LYBackgroundCmd : LYActionCmd

@end
NS_ASSUME_NONNULL_END
