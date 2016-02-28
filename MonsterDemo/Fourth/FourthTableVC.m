//
//  FourthTableVC.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/3.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "FourthTableVC.h"
#import "UIView+Common.h"

@interface FourthTableVC ()

@end

@implementation FourthTableVC{
    BOOL _hasData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithBtnTitle:@"有无数据设置" target:self action:@selector(rightNaviBarItemTapped)];
    
    [self addObjectWithTitle:@"临时实验" DestinationVCName:@"TestVC01"];
    [self addObjectWithTitle:@"临时实验2" DestinationVCName:@"TestVC02"];
    [self addObjectWithTitle:@"scrollView内容截图" DestinationVCName:@"ScreenShootScrollView"];
    self.tableView.tableFooterView = [UIView new];
    
    
    [self.view configBlankPage:DDBlankPageViewNomalNoData hasData:NO hasError:NO];
    
    
}


- (void)rightNaviBarItemTapped{
        [self.view configBlankPage:DDBlankPageViewNomalNoData hasData:!_hasData hasError:NO];
        _hasData = !_hasData;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
