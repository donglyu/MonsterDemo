//
//  AppDelegate.m
//  MosterDemo
//
//  Created by lydsnm on 15/10/31.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "AppDelegate.h"
#import "MainVC.h"
#import "PasswordInputWindow.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    MainVC *tbVC = [[MainVC alloc] init];
//    NavcViewController *Navc = [[NavcViewController alloc] initWithRootViewController:tbVC];
    
    
    self.window.rootViewController = tbVC;
    tbVC.view.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    // 版本控制
    // NSUserDeafualt
//    NSString *key = @"CFBundleVersion";
//    NSString *version = [[NSUserDefaults standardUserDefaults] objectForKey:key];
//    NSString *currentVertion = [NSBundle mainBundle].infoDictionary[key];
    
//    [[NSUserDefaults standardUserDefaults] setObject:currentVertion forKey:key];
//    [[NSUserDefaults standardUserDefaults] synchronize]; // 同步

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    [[PasswordInputWindow sharedInstance] show];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

// 3d
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    MainVC *tbVC = [[MainVC alloc] init];
    //    NavcViewController *Navc = [[NavcViewController alloc] initWithRootViewController:tbVC];
    
    
    self.window.rootViewController = tbVC;
    tbVC.view.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //判断先前我们设置的快捷选项标签唯一标识，根据不同标识执行不同操作
    if([shortcutItem.type isEqualToString:@"com.lyds.Monster.3DFirst"]){
        NSArray *arr = @[@"hello 3D Touch"];
        UIActivityViewController *vc = [[UIActivityViewController alloc]initWithActivityItems:arr applicationActivities:nil];
        [self.window.rootViewController presentViewController:vc animated:YES completion:^{
        }];
    } else if ([shortcutItem.type isEqualToString:@"com.lyds.Monster.3DSecond"]) {//进入搜索界面
        [tbVC setSelectedIndex:2];
    } else if ([shortcutItem.type isEqualToString:@"com.lyds.Monster.3DThird"]) {//进入分享界面
        [tbVC setSelectedIndex:3];
    }
    
    if (completionHandler) {
        completionHandler(YES);
    }
}

@end
