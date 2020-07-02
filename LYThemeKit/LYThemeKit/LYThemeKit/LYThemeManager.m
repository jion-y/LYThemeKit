//
//  LYThemeManager.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "LYThemeManager.h"

static LYThemeManager * theme_manager = nil;
@interface LYThemeManager ()
@property(nonatomic,strong)NSObject<LYThemeProtocol> *theme;
@property(nonatomic,strong)NSHashTable * hashTable;
@end
@implementation LYThemeManager
- (instancetype)initWithTheme:(NSObject<LYThemeProtocol> *)theme
{
    self = [super init];
    if (self) {
        self.theme = theme;
    }
    return self;
}

+(void)regesterWithTheme:(id<LYThemeProtocol>)theme
{
    @synchronized (self) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            theme_manager = [[self alloc] initWithTheme:theme];
        });
    }
}
+(LYThemeManager *)themeManager
{
    return theme_manager;
}
- (NSInteger)themeIndex
{
    return self.theme.currentShowThemeIndex;
}
- (NSDictionary *)themeConfigDic
{
    return self.theme.configDic;
}
- (void)setTheme:(id<LYThemeProtocol>)theme
{
    if (![_theme isEqual:theme])
    {
        _theme = theme;
        _theme.themeCmd = self;
    }
}
- (void)runCmdWithThemeIndex:(NSInteger)index
{
    void (^runCmdBlock)(NSInteger currenIndex) = ^(NSInteger currenIndex){
      
        for (id<LYThemeCmdProtocol> cmd in self.hashTable)
        {
            [cmd execute];
        }
    };
    if ([NSThread isMainThread])
    {
        runCmdBlock(index);
    }
    else
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            runCmdBlock(index);
        });
    }
}
- (void)execute
{
    [self runCmdWithThemeIndex:self.theme.currentShowThemeIndex];
}

- (void)addCmd:(id<LYThemeCmdProtocol>)cmd
{
    if (cmd && ![self.hashTable containsObject:cmd])
    {
        [self.hashTable addObject:cmd];
    }
}
- (void)removeCmd:(id<LYThemeCmdProtocol>)cmd
{
    if (cmd && [self.hashTable containsObject:cmd])
    {
        [self.hashTable removeObject:cmd];
    }
}
#pragma mark -
- (NSHashTable *) hashTable
{
    if (_hashTable == nil)
    {
        _hashTable = [NSHashTable hashTableWithOptions:NSPointerFunctionsWeakMemory];
    }
    return _hashTable;
}
@end
