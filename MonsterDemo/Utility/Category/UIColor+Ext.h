//
//  UIColor+Ext.h
//  MonsterDemo
//
//  Created by donglyu on 16/1/31.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Ext)
/**
 Creates and returns a color object from hex string.
 
 @discussion:
 Valid format: #RGB #RGBA #RRGGBB #RRGGBBAA 0xRGB ...
 The `#` or "0x" sign is not required.
 The alpha will be set to 1.0 if there is no alpha component.
 It will return nil when an error occurs in parsing.
 
 Example: @"0xF0F", @"66ccff", @"#66CCFF88"
 
 @param hexStr  The hex string value for the new color.
 
 @return        An UIColor object from string, or nil if an error occurs.
 */
+ (UIColor *)colorWithHexString:(NSString *)hexStr;

/**
 Creates and returns a color object by add new color.
 
 @param add        the color added
 
 @param blendMode  add color blend mode
 */
- (UIColor *)colorByAddColor:(UIColor *)add blendMode:(CGBlendMode)blendMode;
@end

#ifndef UIColorHex
#define colorWithHex(_hex_)   [UIColor colorWithHexString:((__bridge NSString *)CFSTR(#_hex_))]
#endif