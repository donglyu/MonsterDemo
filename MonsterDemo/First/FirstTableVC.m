//
//  FirstTableVC.m
//  LD
//
//  Created by lydsnm on 15/11/4.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "FirstTableVC.h"
#import "TestVC01.h"

//test

@interface FirstTableVC ()


@end

@implementation FirstTableVC


- (void)viewDidLoad {
    [super viewDidLoad];
     self.clearsSelectionOnViewWillAppear = YES;
    

    [self addObjectWithTitle:@"图文混编" DestinationVCName:@"GraphicTextMixedViewController"];
    [self addObjectWithTitle:@"*视图切换" DestinationVCName:@"DDMenuTableVC"];
    [self addObjectWithTitle:@"UIWindow" DestinationVCName:@"WindowLevelViewController"];
    [self addObjectWithTitle:@"XibUseViewController" DestinationVCName:@"XibUseViewController"];
    [self addObjectWithTitle:@"HUD效果" DestinationVCName:@"HUDPOPTableViewController"];
    [self addObjectWithTitle:@"存储" DestinationVCName:@"StoreCenter"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
