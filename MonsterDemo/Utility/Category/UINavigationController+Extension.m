//
//  UINavigationController+Extension.m
//  NoteApp
//
//  Created by lyds on 1/20/16.
//  Copyright © 2016 SXH-PC. All rights reserved.
//

#import "UINavigationController+Extension.h"

@implementation UINavigationController (Extension)

- (void) popToAssignedViewController:(NSString*)viewClassStr{
    if (viewClassStr == nil) {
        return;
    }
      __unsafe_unretained Class toClass =  NSClassFromString(viewClassStr);
    if (!toClass){
        DLog(@"popToAssignedViewController view class do not exist!");
        return;
    }
    
    BOOL isFound = NO;
    for (UIViewController *viewV in self.viewControllers) {
        if ([viewV isMemberOfClass:toClass]) {
            [self popToViewController:viewV animated:YES];
            isFound = YES;
        }
    }
    
    if (!isFound) {
        DLog(@"当前navigationctrler.viewctrlers中 无此viewcontroller %@", viewClassStr);
    }
}


@end
