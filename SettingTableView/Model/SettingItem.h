//
//  SettingItem.h
//  LDLibs
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
// // 基础类型, 基类

#import <Foundation/Foundation.h>


typedef void(^SettingItemBlcok)();

@interface SettingItem : NSObject
@property (nonatomic, copy) NSString *iconName;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) SettingItemBlcok optionBlock;
@property (nonatomic, copy) NSString *normalRightText;


+ (instancetype)itemWithIconName:(NSString*)iconName settingTitle:(NSString *)title RightText:(NSString*)normalRightText;
@end
