//
//  SettingTableVC.m
//  LDLibs
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
// 设置 , 通用.

#import "SettingTableVC.h"
#import "SettingGroup.h"
#import "SettingArrowDestItem.h"
#import "SettingItem.h"

#import "TestVC.h"
#import "SettingCell.h"
@interface SettingTableVC ()

@property (nonatomic, strong) NSMutableArray *settingGroupList;

@end

@implementation SettingTableVC

- (NSMutableArray*)settingGroupList{
    if (!_settingGroupList) {
        _settingGroupList = [NSMutableArray array];
    }
    return _settingGroupList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.navigationItem.title = @"setting";
    
    [self addGroup0];
}

// 添加setting数据
-(void)addGroup0{
    SettingArrowDestItem *item = [SettingArrowDestItem itemWithIconName:@"asd.png" settingTitle:@"标题" destVCName:@"TestVC"];
    SettingGroup *group = [[SettingGroup alloc]init];
    
    group.settingItems = @[item];
    [self.settingGroupList addObject:group];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.settingGroupList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    SettingGroup *group = self.settingGroupList[section];
    return group.settingItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SettingCell *cell = [SettingCell cellWithSettingTableView:tableView];
    
    SettingGroup *currentGroup = self.settingGroupList[indexPath.section];
    SettingItem *item = [currentGroup.settingItems objectAtIndex:indexPath.row];
    

    cell.cellItem = item;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SettingGroup *currentGroup = self.settingGroupList[indexPath.section];
    SettingItem *item = [currentGroup.settingItems objectAtIndex:indexPath.row];
    
    if ([item isKindOfClass:[SettingArrowDestItem class]]) {
        SettingArrowDestItem *arrayItem = (SettingArrowDestItem*)item;
        Class destClass = NSClassFromString(arrayItem.destVCName);
        if (destClass) {
            id destvc = [[destClass alloc] init];
            [self.navigationController pushViewController:destvc animated:YES];
        }
        
    }
}



@end
