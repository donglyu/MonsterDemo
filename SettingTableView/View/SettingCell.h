//
//  SettingCell.h
//  LDLibs
//
//  Created by lydsnm on 15/11/1.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingItem,SettingArrowDestItem;

@interface SettingCell : UITableViewCell

@property (nonatomic, strong) SettingItem *cellItem;
+ (instancetype) cellWithSettingTableView:(UITableView*)tableView;
@end
