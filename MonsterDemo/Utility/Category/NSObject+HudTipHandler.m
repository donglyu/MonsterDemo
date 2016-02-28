//
//  NSObject+HudTipHandler.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "NSObject+HudTipHandler.h"
#import "MBProgressHUD.h"

@implementation NSObject (HudTipHandler)

+ (NSString *)tipFromError:(NSError *)error{
    if (error && error.userInfo) {
        NSMutableString *tipStr = [[NSMutableString alloc] init];
        if ([error.userInfo objectForKey:@"msg"]) {
            NSArray *msgArray = [[error.userInfo objectForKey:@"msg"] allValues];
            NSUInteger num = [msgArray count];
            for (int i = 0; i < num; i++) {
                NSString *msgStr = [msgArray objectAtIndex:i];
                if (i+1 < num) {
                    [tipStr appendString:[NSString stringWithFormat:@"%@\n", msgStr]];
                }else{
                    [tipStr appendString:msgStr];
                }
            }
        }else{
            if ([error.userInfo objectForKey:@"NSLocalizedDescription"]) {
                tipStr = [error.userInfo objectForKey:@"NSLocalizedDescription"];
            }else{
                [tipStr appendFormat:@"ErrorCode%ld", (long)error.code];
            }
        }
        return tipStr;
    }
    return nil;
}
+ (BOOL)showError:(NSError *)error{
    //    if ([JDStatusBarNotification isVisible]) {//如果statusBar上面正在显示信息，则不再用hud显示error
    //        NSLog(@"如果statusBar上面正在显示信息，则不再用hud显示error");
    //        return NO;
    //    }
    NSString *tipStr = [NSObject tipFromError:error];
    [NSObject showHudTipStr:tipStr];
    return YES;
}


+ (void)showHudTipStr:(NSString *)tipStr{
    if (tipStr && tipStr.length > 0) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.detailsLabelFont = [UIFont boldSystemFontOfSize:15.0];
        hud.detailsLabelText = tipStr;
        hud.margin = 10.f;
        hud.removeFromSuperViewOnHide = YES;
        [hud hide:YES afterDelay:1.0];
    }
}

+ (void)showHudWithCheckmark:(NSString*)hubString WithCompleteBlock:(void(^)())block{
//    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
//    [self.navigationController.view addSubview:hud];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    
    // The sample image is based on the work by http://www.pixelpressicons.com, http://creativecommons.org/licenses/by/2.5/ca/
    // Make the customViews 37 by 37 pixels for best results (those are the bounds of the build-in progress indicators)
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Checkmark.png"]];
    
    // Set custom view mode
    hud.mode = MBProgressHUDModeCustomView;
    
//    HUD.delegate = self;
    hud.labelText = hubString;
    
    [hud showAnimated:YES whileExecutingBlock:^{
        sleep(1);
        if (block) {
            block();
        }
    } completionBlock:^{

    }];


}
@end
