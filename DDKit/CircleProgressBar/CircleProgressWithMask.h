//
//  CircleProgressWithMask.h
//  testCircleProgress
//
//  Created by donglyu on 16/5/2.
//  Copyright © 2016年 donglyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircleProgressBar.h"

@interface CircleProgressWithMask : UIWindow
@property (nonatomic, strong) CircleProgressBar *circleProgressBar;

+ (instancetype) sharedInstance;

- (void)show;
- (void)dismiss;


@end
