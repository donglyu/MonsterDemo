//
//  BaseNavcVC.m
//  LD
//
//  Created by lydsnm on 15/11/4.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

/*
 NavigationBarItem调整
 http://www.jianshu.com/p/457c80cbb487
 在i
 
 */

#import "BaseNavcVC.h"

@interface BaseNavcVC ()

@end

@implementation BaseNavcVC
// 设置整个项目的item样式
+(void)initialize{
    
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    // key：NS****AttributeName
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置不可用状态
    NSMutableDictionary *disableTextAttrs = [NSMutableDictionary dictionary];
    disableTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.7];
    disableTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:disableTextAttrs forState:UIControlStateDisabled];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UINavigationBar *navcBar = [UINavigationBar appearance];
    
    [[UINavigationBar appearance ] setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    [navcBar setTintColor:[UIColor whiteColor]];
    

    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    //    [navigationBarAppearance setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithHexString:[NSObject baseURLStrIsTest]? @"0x3bbd79" : @"0x28303b"]] forBarMetrics:UIBarMetricsDefault];
    
    // navci
    navigationBarAppearance.backIndicatorImage = [UIImage imageNamed:@"arrow"];
    navigationBarAppearance.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"arrow"];
    [navigationBarAppearance setTintColor:[UIColor whiteColor]];//返回按钮的箭头颜色
    NSDictionary *textAttributes = [self kNavTitleFontSize];
    [navigationBarAppearance setTitleTextAttributes:textAttributes];
    

    //    // 光标
    [[UITextField appearance] setTintColor:[AppSkin commonBtnColorWithLightRed]];//[UIColor colorWithHexString:@"0x3bbc79"]];//设置UITextField的光标颜色
    [[UITextView appearance] setTintColor:[AppSkin commonBtnColorWithLightRed]];//[UIColor colorWithHexString:@"0x3bbc79"]];//设置UITextView的光标颜色
    
    
}

- (NSDictionary *)kNavTitleFontSize{
    return @{
             NSForegroundColorAttributeName: [UIColor whiteColor],
             NSFontAttributeName : [UIFont systemFontOfSize:15],
             };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:self action:nil];
    [super pushViewController:viewController animated:animated];
}

-(UIViewController *)popViewControllerAnimated:(BOOL)animated{
    self.hidesBottomBarWhenPushed = NO;
    return [super popViewControllerAnimated:animated];
}

//-(UINavigationItem*)navigationItem{
//    
//    UINavigationItem *NavcItem = [[UINavigationItem alloc]initWithTitle:@"统一设置"];
//    NavcItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"tttt" style:UIBarButtonItemStylePlain target:self action:nil];
//    return NavcItem;
//
//
//}



/*
 setBackground后可以用clipToBounds裁剪
 
 */


@end
