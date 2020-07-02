//
//  LYTestTheme.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "LYTestTheme.h"

@implementation LYTestTheme
@synthesize currentShowThemeIndex;
@synthesize themeCmd;

- (void)switchThemes
{
    if (self.themeCmd) {
        [self.themeCmd execute];
    }
}

@end
