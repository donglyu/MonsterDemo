//
//  ViewController.m
//  MosterDemo
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
//  use default tabBar

#import "MainVC.h"
#import "BaseNavcVC.h"
#import "FirstTableVC.h"
#import "SecondTableVC.h"
#import "ThirdTableVC.h"
#import "FourthTableVC.h"

@interface MainVC ()
@property (nonatomic, strong) BaseNavcVC *navcViewController0;
@property (nonatomic, strong) FirstTableVC *firstViewController;

@property (nonatomic, strong) BaseNavcVC *navcViewController1;
@property (nonatomic, strong) SecondTableVC *SecondViewController;

@property (nonatomic, strong) BaseNavcVC *navcViewController2;
@property (nonatomic, strong) ThirdTableVC *ThirdViewController;

@property (nonatomic, strong) BaseNavcVC *navcViewController3;
@property (nonatomic, strong) FourthTableVC *FourthViewController;
@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawTabBarView];
}

- (void)drawTabBarView{
    [self.tabBar setBackgroundColor:[UIColor whiteColor]];
    self.tabBar.tintColor = [UIColor colorWithRed:1 green:0.4 blue:0.02 alpha:1];
    self.tabBar.clipsToBounds = YES;
//    CGRect rect = CGRectMake(0, 0, kScreenWidth, 1);
//    UIGraphicsBeginImageContext(rect.size);
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetFillColorWithColor(context,[UIColor purpleColor].CGColor);
//    CGContextFillRect(context, rect);
//    UIImage *imageFromColor = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    [self.tabBar setShadowImage:imageFromColor];
//    [self.tabBar setBackgroundImage:[UIImage new]];
    
    self.selectedIndex = 0;
    self.tabBar.barTintColor = [UIColor whiteColor];
    // vc
    _firstViewController = [[FirstTableVC alloc] init];
    UITabBarItem *firstTabItem  = [[UITabBarItem alloc] initWithTitle:@"基本" image:nil tag:0];
    _firstViewController.title = firstTabItem.title;
    firstTabItem.image = [[UIImage imageNamed:@"001"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _firstViewController.tabBarItem = firstTabItem;
    _navcViewController0 = [[BaseNavcVC alloc] initWithRootViewController:_firstViewController];
    
    _SecondViewController = [[SecondTableVC alloc] init];
    UITabBarItem *secondItem  = [[UITabBarItem alloc] initWithTitle:@"进阶" image:nil tag:1];
    _SecondViewController.title = secondItem.title;
    secondItem.image = [[UIImage imageNamed:@"002"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _SecondViewController.tabBarItem = secondItem;
    _navcViewController1 = [[BaseNavcVC alloc] initWithRootViewController:_SecondViewController];
    
    _ThirdViewController = [[ThirdTableVC alloc] init];
    UITabBarItem *thirdItem = [[UITabBarItem alloc] initWithTitle:@"高级" image:nil tag:2];
    _ThirdViewController.title = thirdItem.title;
    thirdItem.image = [[UIImage imageNamed:@"003"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _ThirdViewController.tabBarItem = thirdItem;
    _navcViewController2 = [[BaseNavcVC alloc] initWithRootViewController:_ThirdViewController];
    
    _FourthViewController = [[FourthTableVC alloc] init];
    UITabBarItem *fourthItem = [[UITabBarItem alloc] initWithTitle:@"个人" image:nil tag:3];
    _FourthViewController.title = fourthItem.title;
    fourthItem.image = [[UIImage imageNamed:@"004"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _FourthViewController.tabBarItem = fourthItem;
    _navcViewController3 = [[BaseNavcVC alloc] initWithRootViewController:_FourthViewController];
    
    self.viewControllers = @[_navcViewController0, _navcViewController1, _navcViewController2, _navcViewController3];
    
    self.navigationItem.backBarButtonItem.title = @"返回";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
