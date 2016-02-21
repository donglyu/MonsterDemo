//
//  TestVC01.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
//  http://www.2cto.com/kf/201312/268724.html

#import "TestVC01.h"
#import "NSObject+HudTipHandler.h"

@implementation TestVC01

- (IBAction)buttonClick:(id)sender {
    [NSObject showHudWithCheckmark:@"checked"];
    
    
}
NSString *notificationName = @"test";
- (IBAction)PostNotification:(id)sender {

    NSDictionary *userInfoDict = @{
                                   @"userName":@"zhangsan",
                                   @"pwd" : @"123"
                                   };
    
    NSNotification *notification = [NSNotification notificationWithName:notificationName object:nil userInfo:userInfoDict]; // or self.
    
    [[NSNotificationCenter defaultCenter] postNotification:notification];
//    [[NSNotificationCenter defaultCenter] postNotificationName:notification object:@"fuck" userInfo:userInfoDict];
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notice:) name:notificationName object:nil];

}

- (void)notice:(NSDictionary *)dict{
    NSLog(@"%@", dict);
    [NSObject showHudTipStr:@"get the oberser"];

}


- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
