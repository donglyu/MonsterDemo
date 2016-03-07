//
//  TestVC02.m
//  MonsterDemo
//
//  Created by donglyu on 1/29/16.
//  Copyright © 2016 lydsnm. All rights reserved.
//

#import "TestVC02.h"
#import "ActivityIndicatorBtnView.h"

// 旋转 ActivityIndicator
#import "DAReloadActivityButton.h"

@interface TestVC02 ()

@property (nonatomic, strong) DAReloadActivityButton *button;
@end

@implementation TestVC02

- (void)viewDidLoad {
    [super viewDidLoad];

    // titleView 有泄露
//    ActivityIndicatorBtnView *titleView = [ActivityIndicatorBtnView activityIndicatorBtnViewWithTitle:@"标题..." andFrame:CGRectMake(0, 0, 100, 30)];
//    debugSetBgColor(titleView);
//    self.navigationItem.titleView = titleView;
    
    // view
    DAReloadActivityButton *button = [[DAReloadActivityButton alloc] init];
    button.center = CGPointMake(160, 176);
    button.autoresizingMask = (UIViewAutoresizingFlexibleTopMargin |
                                   UIViewAutoresizingFlexibleBottomMargin |
                                   UIViewAutoresizingFlexibleLeftMargin |
                                   UIViewAutoresizingFlexibleRightMargin);

    [button addTarget:self action:@selector(animate2:) forControlEvents:UIControlEventTouchUpInside];
    _button = button;
    [self.view addSubview:button];
    [self.view bringSubviewToFront:button];
    [button startAnimating];
    DAReloadActivityButton* navigationBarItem = [[DAReloadActivityButton alloc] init];
    navigationBarItem.showsTouchWhenHighlighted = NO;
    [navigationBarItem addTarget:self action:@selector(animate:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:navigationBarItem];
    self.navigationItem.rightBarButtonItem = barButtonItem;

}

- (void)animate:(DAReloadActivityButton *)button
{
     [button spin];
//    if(button == navigationBarItem) {
//        [button spin];
//    } else {
//        if ([button isAnimating]) {
//            [button stopAnimating];
//        } else {
//            [button startAnimating];
//        }
//    }
}
- (void)animate2:(DAReloadActivityButton *)button{
    if ([button isAnimating]) {
        [button stopAnimating];
    } else {
        [button startAnimating];
    }

}

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
