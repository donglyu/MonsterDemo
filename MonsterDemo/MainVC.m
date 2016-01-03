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

@interface MainVC ()
@property (nonatomic, strong) BaseNavcVC *navcViewController0;
@property (nonatomic, strong) FirstTableVC *firstViewController;

@property (nonatomic, strong) BaseNavcVC *navcViewController1;
@property (nonatomic, strong) SecondTableVC *SecondViewController;

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawTabBarView];
}

- (void)drawTabBarView{
    [self.tabBar setBackgroundColor:[UIColor colorWithRed:0.80 green:0.90 blue:0.91 alpha:0.7]];
    self.tabBar.tintColor = [UIColor colorWithRed:1 green:0.4 blue:0.02 alpha:1];
//    self.tabBar.shadowImage = [[UIImage alloc]init];
    self.selectedIndex = 0;
    

    // vc
    _firstViewController = [[FirstTableVC alloc] init];
    UITabBarItem *firstTabItem  = [[UITabBarItem alloc] initWithTitle:@"首页" image:nil tag:0];
    firstTabItem.image = [[UIImage imageNamed:@"Icon_Home.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _firstViewController.tabBarItem = firstTabItem;
    _navcViewController0 = [[BaseNavcVC alloc] initWithRootViewController:_firstViewController];
    
    _SecondViewController = [[SecondTableVC alloc] init];
    UITabBarItem *Item1  = [[UITabBarItem alloc] initWithTitle:@"个人" image:nil tag:0];
    Item1.image = [[UIImage imageNamed:@"Icon_Profile.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _SecondViewController.tabBarItem = Item1;
    _navcViewController1 = [[BaseNavcVC alloc] initWithRootViewController:_SecondViewController];
    
  
    self.viewControllers = @[_navcViewController0, _navcViewController1];
    
    
    
    
    self.navigationItem.backBarButtonItem.title = @"返回";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
