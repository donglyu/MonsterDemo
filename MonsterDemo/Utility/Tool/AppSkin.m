//
//  AppSkin.m
//  MonsterDemo
//
//  Created by donglyu on 16/1/31.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "AppSkin.h"

@implementation AppSkin

#pragma mark - font

+ (UIFont *)appFontWithSize:(CGFloat)size
{
    //    return [UIFont fontWithName:@"HelveticaNeue" size:size];
    return [UIFont systemFontOfSize:size];
}

+ (UIFont *)appBoldFontWithSize:(CGFloat)size{
    return [UIFont boldSystemFontOfSize:size];
}

#pragma mark - color
/** 浅红*/
+ (UIColor*)commonBtnColorWithLightRed{
    return colorWithHex(EF5362);
}


+ (UIColor *)commonThemeColor{
    return colorWithHex(dea32c);
}

#pragma mark - UI
+ (void) customCommonUserInterface{


}

@end
