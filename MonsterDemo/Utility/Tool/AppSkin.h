//
//  AppSkin.h
//  MonsterDemo
//
//  Created by donglyu on 16/1/31.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIColor+Ext.h"

@interface AppSkin : NSObject
+ (UIFont *)appFontWithSize:(CGFloat)size;
+ (UIFont *)appBoldFontWithSize:(CGFloat)size;

+ (UIColor*)commonBtnColorWithLightRed;
@end
