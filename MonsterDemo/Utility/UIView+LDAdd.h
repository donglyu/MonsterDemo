//
//  UIView+LDAdd.h
//  LD
//
//  Created by lydsnm on 15/11/9.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LDAdd)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

- (void)drawLineAroundView;

@end

float LDDeviceSystemVersion();

#ifndef kSystemVersion
#define kSystemVersion LDDeviceSystemVersion()

#endif

#ifndef kiOS6Later
#define kiOS6Later (kSystemVersion >= 6)
#endif

#ifndef kiOS7Later
#define kiOS7Later (kSystemVersion >= 7)
#endif

#ifndef kiOS8Later
#define kiOS8Later (kSystemVersion >= 8)
#endif

#ifndef kiOS9Later
#define kiOS9Later (kSystemVersion >= 9)
#endif


// 屏幕相关属性
#ifndef kScreenWidth
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#endif

#ifndef kScreenHeight
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height
#endif

CGSize LDDeviceScreenSize();
#ifndef kScreenSize
#define kScreenSize LDDeviceScreenSize()
#endif

// 屏幕scale
#ifndef kScreenScale
#define kScreenScale [UIScreen mainScreen].scale
#endif

// 背景色
#ifndef kBackgroundColor01
#define kBackgroundColor01 [UIColor colorWithRed:0.6 green:0.3 blue:0.4 alpha:0.5]
#endif

#ifndef kBackgroundColor02
#define kBackgroundColor02 [UIColor colorWithRed:0.8 green:0.1 blue:0.4 alpha:0.5]
#endif

#ifndef kBackgroundColor03
#define kBackgroundColor03 [UIColor colorWithRed:0.3 green:0.9 blue:0.6 alpha:0.5]
#endif


/*
 Create UIColor with a hex string.
 Example: UIColorHex(0xF0F), UIColorHex(66ccff), UIColorHex(#66CCFF88)
 
 Valid format: #RGB #RGBA #RRGGBB #RRGGBBAA 0xRGB ...
 The `#` or "0x" sign is not required.
 */
#ifndef UIColorHex
#define UIColorHex(_hex_)   [UIColor colorWithHexString:((__bridge NSString *)CFSTR(#_hex_))]
#endif




@interface UIColor (LDAdd)

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
