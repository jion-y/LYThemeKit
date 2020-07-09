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
@property(nonatomic,strong)LYTestTheme * theme;
@property (weak, nonatomic) IBOutlet UIView *testview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LYTestTheme * test = [[LYTestTheme alloc] init];
    [LYThemeManager regesterWithTheme:test];
    self.theme = test;
    [self.view setThemeBackGroundColor:@[[UIColor redColor],[UIColor blueColor]]];
    
    [self.testview setThemeBackGroundColor:@[[UIColor yellowColor], [UIColor greenColor]]];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSInteger index = self.theme.currentShowThemeIndex;
    index = (index + 1) %2;
    self.theme.currentShowThemeIndex = index;
    [self.theme switchThemes];
}
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}
@end
