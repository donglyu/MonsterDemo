//
//  ThirdTableVC.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/3.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "ThirdTableVC.h"
#import "ExampleCellItem.h"


@interface ThirdTableVC ()
@property (nonatomic, strong) NSMutableArray *egsList;


@end

@implementation ThirdTableVC

- (void)viewDidLoad {
    [super viewDidLoad];


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return self.egsList.count;
    return 0;
}



@end
