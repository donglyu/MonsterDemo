//
//  SettingItem.m
//  LDLibs
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "SettingItem.h"


@implementation SettingItem

+ (instancetype)itemWithIconName:(NSString*)iconName settingTitle:(NSString *)title RightText:(NSString*)normalRightText{
    SettingItem *item = [[self alloc] init];
    item.iconName = iconName;
    item.title = title;
    item.normalRightText = normalRightText;
    
    return item;
}

@end
