//
//  FourthTableVC.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/3.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "FourthTableVC.h"

@interface FourthTableVC ()

@end

@implementation FourthTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithBtnTitle:@"关于" target:self action:nil];
    
    [self addObjectWithTitle:@"临时实验" DestinationVCName:@"TestVC01"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
