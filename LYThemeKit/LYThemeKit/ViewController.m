//
//  ViewController.m
//  LYThemeKit
//
//  Created by anita on 2020/7/1.
//  Copyright © 2020 anita. All rights reserved.
//

#import "ViewController.h"
#import "LYThemeKit.h"
#import "LYTestTheme.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LYTestTheme * test = [[LYTestTheme alloc] init];
    [LYThemeManager regesterWithTheme:test];
    
    [self.view setThemeBackGroundColor:@[[UIColor redColor],[UIColor blueColor]]];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSInteger index = [LYThemeManager themeManager].theme.currentShowThemeIndex;
    index = (index + 1) %2;
    [LYThemeManager themeManager].theme.currentShowThemeIndex = index;
}
@end
