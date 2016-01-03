//
//  SettingGroup.h
//  LDLibs
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingGroup : NSObject
@property (nonatomic, copy) NSString *headerText;
@property (nonatomic, strong) NSArray *settingItems;
@property (nonatomic, copy) NSString *footerText;
@end
