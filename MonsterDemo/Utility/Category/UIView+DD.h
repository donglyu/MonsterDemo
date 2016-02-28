//
//  UIView+LDAdd.h
//  LD
//
//  Created by lydsnm on 15/11/9.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DD)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

- (void)drawLineAroundView;
- (UIImage*)captureView:(UIView *)theView;
@end

float DDDeviceSystemVersion();

#ifndef kSystemVersion
#define kSystemVersion LDDeviceSystemVersion()
#endif

CGSize DDDeviceScreenSize();
#ifndef kScreenSize
#define kScreenSize DDDeviceScreenSize()
#endif

CGRect DDDeviceScreenBounds();
#ifndef kScreenBounds
#define kScreenBounds DDDeviceScreenBounds()
#endif
// 屏幕scale
#ifndef kScreenScale
#define kScreenScale [UIScreen mainScreen].scale
#endif

// 预设的背景色
#ifndef kBackgroundColor01
#define kBackgroundColor01 [UIColor colorWithRed:0.6 green:0.3 blue:0.4 alpha:0.5]
#endif

#ifndef kBackgroundColor02
#define kBackgroundColor02 [UIColor colorWithRed:0.8 green:0.1 blue:0.4 alpha:0.5]
#endif

#ifndef kBackgroundColor03
#define kBackgroundColor03 [UIColor colorWithRed:0.3 green:0.9 blue:0.6 alpha:0.5]
#endif





