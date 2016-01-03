//
//  SettingArrowDestItem.m
//  LDLibs
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "SettingArrowDestItem.h"

@implementation SettingArrowDestItem

+ (instancetype)itemWithIconName:(NSString *)iconName settingTitle:(NSString *)title destVCName:(NSString *)destVCNames{
    SettingArrowDestItem *Arrayitem = [super itemWithIconName:iconName settingTitle:title RightText:nil];// 这个方式ok吗?
    Arrayitem.destVCName = destVCNames;
    
    return Arrayitem;
}

@end
