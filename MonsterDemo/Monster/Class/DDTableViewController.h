//
//  DDTableViewController.h
//  MonsterDemo
//
//  Created by donglyu on 16/2/4.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleCellItem;
@interface DDTableViewController : UITableViewController
@property (nonatomic, nullable, strong) NSMutableArray < ExampleCellItem *> *egsList;



- (void)addObjectWithTitle:(nullable NSString *)egTitle DestinationVCName:(nullable NSString *)vcName;

@end
