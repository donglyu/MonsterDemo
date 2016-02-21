//
//  Time.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "Time.h"



@implementation Time

+ (instancetype)sharedInstance {
    static Time *shared_Instance = nil;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        shared_Instance = [[self alloc] init];
    });
    return shared_Instance;
}

- (NSDateFormatter*)dateFormatter{
    if (_dateFormatter == nil) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter = dateFormatter;
    }
    return _dateFormatter;
}


@end
