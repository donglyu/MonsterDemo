//
//  DDTableViewController.h
//  MonsterDemo
//
//  Created by donglyu on 16/2/4.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDTableViewController : UITableViewController
@property (nonatomic, nonnull, strong) NSMutableArray *egsList;

- (void)addObjectWithTitle:(NSString*)egTitle DestinationVCName:(NSString*)vcName;

@end
