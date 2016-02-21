//
//  HUDPOPTableViewController.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "HUDPOPTableViewController.h"

@interface HUDPOPTableViewController ()


@end

@implementation HUDPOPTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addObjectWithTitle:@"MBProgressHUD" DestinationVCName:@"MBProgressHUDViewController"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
