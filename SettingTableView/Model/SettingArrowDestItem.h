//
//  SettingArrowDestItem.h
//  LDLibs
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "SettingItem.h"

@interface SettingArrowDestItem : SettingItem

@property (nonatomic, copy) NSString *destVCName;

+ (instancetype)itemWithIconName:(NSString *)iconName settingTitle:(NSString *)title destVCName:(NSString *)destVCNames;

@end
