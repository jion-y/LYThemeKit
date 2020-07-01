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
@property(nonatomic,strong)NSHashTable<id<LYThemeCmdProtocol>> * hashTable;
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

- (void)addObserver
{
    [_theme addObserver:self forKeyPath:@"currentShowThemeIndex" options:NSKeyValueObservingOptionNew context:@"currentShowThemeIndex"];
}
- (void)removeObserver
{
    [_theme removeObserver:self forKeyPath:@"currentShowThemeIndex"];
}
- (void)setTheme:(id<LYThemeProtocol>)theme
{
    if (![_theme isEqual:theme])
    {
        [self removeObserver];
        _theme = theme;
        [self addObserver];
    }
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSString * cntext = (__bridge NSString *)context;
    if ([cntext isEqualToString:@"currentShowThemeIndex"])
    {
        NSInteger newIndex = [change[NSKeyValueChangeNewKey] integerValue];
        [self runCmdWithThemeIndex:newIndex];
    }
}
- (void)runCmdWithThemeIndex:(NSInteger)index
{
    void (^runCmdBlock)(NSInteger currenIndex) = ^(NSInteger currenIndex){
      
        for (id<LYThemeCmdProtocol> cmd in self.hashTable)
        {
            [cmd runCmdWithThemeIndex:currenIndex];
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
#pragma mark -
- (NSHashTable<id<LYThemeCmdProtocol>> *) hasTable
{
    if (_hashTable == nil)
    {
        _hashTable = [NSHashTable hashTableWithOptions:NSPointerFunctionsWeakMemory];
    }
    return _hashTable;
}
@end
