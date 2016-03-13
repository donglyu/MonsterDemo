//
//  WeiboAnimation.m
//  MonsterDemo
//
//  Created by donglyu on 16/3/13.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "WeiboAnimation.h"
#import "BHBPopView.h"

@interface WeiboAnimation ()

@end

@implementation WeiboAnimation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addBackImage];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].statusBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [UIApplication sharedApplication].statusBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}


- (void)addBackImage{
    UIImageView * backImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    NSString *bgImagePath = [[NSBundle mainBundle] pathForResource:@"weibo.PNG" ofType:nil];
    UIImage *image = [UIImage imageWithContentsOfFile:bgImagePath];
    backImageView.image = image;
    [self.view addSubview:backImageView];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    BHBItem * item0 = [[BHBItem alloc]initWithTitle:@"Text" Icon:@"images.bundle/tabbar_compose_idea"];
    BHBItem * item1 = [[BHBItem alloc]initWithTitle:@"Albums" Icon:@"images.bundle/tabbar_compose_photo"];
    BHBItem * item2 = [[BHBItem alloc]initWithTitle:@"Camera" Icon:@"images.bundle/tabbar_compose_camera"];
    BHBItem * item3 = [[BHBItem alloc]initWithTitle:@"Check in" Icon:@"images.bundle/tabbar_compose_lbs"];
    BHBItem * item4 = [[BHBItem alloc]initWithTitle:@"Review" Icon:@"images.bundle/tabbar_compose_review"];
    //    item4.isMore = YES;
    BHBItem * item5 = [[BHBItem alloc]initWithTitle:@"More" Icon:@"images.bundle/tabbar_compose_more"];
    //第六个按钮是more按钮
    item5.isMore = YES;
    BHBItem * item6 = [[BHBItem alloc]initWithTitle:@"Friend Circle" Icon:@"images.bundle/tabbar_compose_friend"];
    BHBItem * item7 = [[BHBItem alloc]initWithTitle:@"Weibo Camera" Icon:@"images.bundle/tabbar_compose_wbcamera"];
    BHBItem * item8 = [[BHBItem alloc]initWithTitle:@"Music" Icon:@"images.bundle/tabbar_compose_music"];
    BHBItem * item9 = [[BHBItem alloc]initWithTitle:@"Blog" Icon:@"images.bundle/tabbar_compose_weibo"];
    BHBItem * item10 = [[BHBItem alloc]initWithTitle:@"Collection" Icon:@"images.bundle/tabbar_compose_transfer"];
    BHBItem * item11 = [[BHBItem alloc]initWithTitle:@"Voice" Icon:@"images.bundle/tabbar_compose_voice"];
    
    //添加popview
    [BHBPopView showToView:self.view withItems:@[item0,item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11]andSelectBlock:^(BHBItem *item, NSInteger index) {
        NSLog(@"%ld,选中%@",index,item.title);
    }];
    
    //添加popview
    //    [BHBPopView showToView:self.view andImages:@[@"images.bundle/tabbar_compose_idea",@"images.bundle/tabbar_compose_photo",@"images.bundle/tabbar_compose_camera",@"images.bundle/tabbar_compose_lbs",@"images.bundle/tabbar_compose_review",@"images.bundle/tabbar_compose_more"] andTitles:@[@"Text",@"Albums",@"Camera",@"Check in",@"Review",@"More"] andSelectBlock:^(BHBItem *item, NSInteger index) {
    //
    //    }];
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
