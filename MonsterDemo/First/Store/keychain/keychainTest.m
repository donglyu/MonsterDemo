//
//  keychainTest.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/21.
//  Copyright © 2016年 lydsnm. All rights reserved.
//  http://www.lvtao.net/ios/ios-keychain.html

#import "keychainTest.h"
#import "SFHFKeychainUtils.h"

#define kKeyChainSeviceName @"DDStoreKit"

@interface keychainTest ()

@end

@implementation keychainTest

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
}



#pragma mark - Use SFHFKeychainUtils
- (IBAction)storeUserInfo:(id)sender {

    NSString *objectString = @"test.....kkkkkkey";
    NSError *error;
    [SFHFKeychainUtils storeUsername:@"dd" andPassword:objectString forServiceName:kKeyChainSeviceName updateExisting:YES error:&error];
    DLog(@"store 完成");
}

- (IBAction)getUserInfo:(id)sender {

    NSError *error;
    NSString *pwd = [SFHFKeychainUtils getPasswordForUsername:@"dd" andServiceName:kKeyChainSeviceName error:&error];
    if (error) {
        DLog(@"error:%@ %@", error, error.localizedDescription);
    }
    
    DLog(@"pwd: %@", pwd);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
