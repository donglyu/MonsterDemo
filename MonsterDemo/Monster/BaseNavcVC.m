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
    
    // UIBarButtonItem
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    // key：NS****AttributeName
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [AppSkin commonBtnColorWithLightRed];
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
    
//    [navcBar setBackgroundColor:[AppSkin commonBtnColorWithLightRed]];
    [navcBar setBackgroundImage:[UIImage imageWithColor:[AppSkin commonThemeColor]] forBarMetrics:UIBarMetricsDefault];
    //返回按钮颜色.
    [navcBar setTintColor:[UIColor whiteColor]];
    navcBar.backIndicatorImage = [UIImage imageNamed:@"arrow"];
    navcBar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"arrow"];

    NSDictionary *textAttributes = [self kNavTitleFontSize];
    [navcBar setTitleTextAttributes:textAttributes];
    // 隐藏黑线
    [navcBar setShadowImage:[[UIImage alloc] init]];
    //    // 光标
    [[UITextField appearance] setTintColor:[AppSkin commonBtnColorWithLightRed]];
    [[UITextView appearance] setTintColor:[AppSkin commonBtnColorWithLightRed]];
    
    //导航栏标题样式
//    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:Color_NavBarTitel, NSForegroundColorAttributeName, Font_NavBarTitel, NSFontAttributeName, nil]];
    
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
