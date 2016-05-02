//
//  AnimationTest.m
//  MonsterDemo
//
//  Created by donglyu on 16/3/30.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "AnimationTest.h"
#import "TestBlankVC.h"

@interface AnimationTest ()

@end

@implementation AnimationTest

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImageView.image = [UIImage imageNamed:@"photo9"];
    [self.view addSubview:bgImageView];
    
    UIBarButtonItem *rightBarItem = [UIBarButtonItem itemWithBtnTitle:@"切换" target:self action:@selector(rightBarClick)];
    self.navigationItem.rightBarButtonItem = rightBarItem;
    
}

- (void)rightBarClick{
    CATransition *transition = [CATransition animation];
    transition.duration = 1.0f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = @"rippleEffect";
    transition.subtype = kCATransitionFromRight;
    transition.delegate = self;
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    TestBlankVC *vc = [[TestBlankVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
    /**
     animation.type = kCATransitionFade;
     
     animation.type = kCATransitionPush;
     
     animation.type = kCATransitionReveal;
     
     animation.type = kCATransitionMoveIn;
     
     animation.type = @"cube";
     
     animation.type = @"suckEffect";
     
     // 页面旋转
     animation.type = @"oglFlip";
     
     //水波纹
     animation.type = @"rippleEffect";
     
     animation.type = @"pageCurl";
     
     animation.type = @"pageUnCurl";
     
     animation.type = @"cameraIrisHollowOpen";
     
     animation.type = @"cameraIrisHollowClose";
     */

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
