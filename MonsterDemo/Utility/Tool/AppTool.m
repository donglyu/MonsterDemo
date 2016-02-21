//
//  AppTool.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/14.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "AppTool.h"

@implementation AppTool

/** version*/
+ (NSString *)appVersion
{
    static NSString *s_version;
    if (nil == s_version) {
        s_version = [NSString stringWithFormat:@"fotorinhouse_%@", [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleShortVersionString"]];
    }
    return s_version;
}

- (void)checkVersionAndAlertIsOrNotUpdate{
//    [AppTool appVersion];
    NSDictionary *infoDict = [[NSBundle mainBundle]infoDictionary];
    NSString *currentVersion = [infoDict objectForKey:@"CFBundleShortVersionString"];
    NSString *url = @"http://itunes.apple.com/lookup?id=应用ID";
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] init];
    [urlRequest setURL:[NSURL URLWithString:url]];

}

@end
