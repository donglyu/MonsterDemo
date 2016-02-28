//
//  NSObject+HudTipHandler.h
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (HudTipHandler)
+ (NSString *)tipFromError:(NSError *)error;
+ (BOOL)showError:(NSError *)error;
+ (void)showHudTipStr:(NSString *)tipStr;

+ (void)showHudWithCheckmark:(NSString*)hubString WithCompleteBlock:(void(^)())block;
@end
