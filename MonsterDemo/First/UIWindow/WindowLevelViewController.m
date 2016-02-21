//
//  WindowLevelViewController.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/17.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "WindowLevelViewController.h"

@interface WindowLevelViewController ()

@property (nonatomic, strong) UIWindow *uiWindow;

@end

@implementation WindowLevelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)createWindowButtonPressed:(UIButton *)button {
    _uiWindow = [[UIWindow alloc] initWithFrame:kScreenBounds];
    _uiWindow.windowLevel = UIWindowLevelNormal;
    _uiWindow.backgroundColor = [UIColor redColor];
    _uiWindow.hidden = NO;
    
    UIGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] init];
    [gesture addTarget:self action:@selector(hideWindow)];
    [_uiWindow addGestureRecognizer:gesture];
}

- (void) hideWindow{
    _uiWindow.hidden = YES;
    _uiWindow = nil;
}
@end
