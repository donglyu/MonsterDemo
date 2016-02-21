//
//  DDTableViewController.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/4.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "DDTableViewController.h"
#import "ExampleCellItem.h"

@interface DDTableViewController ()

@end

@implementation DDTableViewController

- (NSMutableArray *)egsList{
    if (nil == _egsList){
        _egsList = [[NSMutableArray alloc] init];
    }
    return _egsList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)addObjectWithTitle:(NSString*)egTitle DestinationVCName:(NSString*)vcName{
    [self.egsList addObject:[ExampleCellItem itemWithExampleName:egTitle VCName:vcName]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.egsList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* const ID = @"ExampleCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    ExampleCellItem *cellItem = self.egsList[indexPath.row];
    
    cell.textLabel.text = cellItem.exampleName;
    cell.textLabel.font = [AppSkin appFontWithSize:14];
    

    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ExampleCellItem *cellItem = self.egsList[indexPath.row];
    
    UIViewController *destVC = [[NSClassFromString(cellItem.viewControllerName) alloc] init];
    destVC.hidesBottomBarWhenPushed = YES;
    destVC.title = cellItem.exampleName;
    [self.navigationController pushViewController:destVC animated:YES];
    
    
}


#pragma mark - other
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
