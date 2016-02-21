//
//  StoreCenter.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/21.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "StoreCenter.h"

@interface StoreCenter ()

@end

@implementation StoreCenter

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addObjectWithTitle:@"keyChainTest" DestinationVCName:@"keychainTest"];
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
