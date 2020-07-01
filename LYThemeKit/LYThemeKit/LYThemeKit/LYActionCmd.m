//
//  LYActionCmd.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "LYActionCmd.h"

@implementation LYActionCmd

- (instancetype)initWith:(NSArray *)themes target:(id)target sel:(SEL)sel
{
    self = [super init];
    if (self) {
        self.themeElems = themes;
        self.target = target;
        self.sel = sel;
    }
    return self;
}
- (void)runCmdWithThemeIndex:(NSInteger)index
{
    if (self.themeElems.count == 0) {
        return ;
    }
    index = MAX(0, index);
    index = MIN(index, self.themeElems.count - 1);
    NSObject * obj = self.themeElems[index];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [self.target performSelector:self.sel withObject:obj];
#pragma clang diagnostic pop
}
@end
@implementation LYBackgroundCmd
- (void) runCmdWithThemeIndex:(NSInteger)index
{
    if (self.themeElems.count == 0) {
        return ;
    }
    index = MAX(0, index);
    index = MIN(index, self.themeElems.count - 1);
    NSObject * obj = self.themeElems[index];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [self.target performSelector:self.sel withObject:obj];
#pragma clang diagnostic pop
}
@end
