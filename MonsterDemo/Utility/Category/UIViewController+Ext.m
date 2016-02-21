//
//  UIViewController+Ext.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/2.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "UIViewController+Ext.h"

@implementation UIViewController (Ext)
- (void)setNaviStatusHidden:(BOOL)hidden{
    if (hidden) {
        [[UIApplication sharedApplication] setStatusBarHidden:YES];
        [self.navigationController setNavigationBarHidden:YES];
    }else{
        [[UIApplication sharedApplication] setStatusBarHidden:NO];
        [self.navigationController setNavigationBarHidden:NO];
    }
}
@end
