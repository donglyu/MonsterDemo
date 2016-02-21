//
//  UIBarButtonItem+Ext
//  lyds
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 lyds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Ext)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
+ (UIBarButtonItem *)itemWithBtnTitle:(NSString *)title target:(id)obj action:(SEL)selector;

@end
