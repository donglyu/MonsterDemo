//
//  PasswordInputWindow.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/29.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

/**
 继承UIWindow适用场景: 
 密码输入界面
 应用的启动介绍页, 
 应用内的通知提醒显示
 应用内的弹框广告
 */

#import "PasswordInputWindow.h"

@implementation PasswordInputWindow{
    UITextField *_textField;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (instancetype) sharedInstance{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
    });
    return sharedInstance;
}

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 200, 20)];
        label.text = @"请输入密码";
        [self addSubview:label];
        
        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 80, 200, 20)];
        textField.backgroundColor = [UIColor whiteColor];
        textField.secureTextEntry = YES;
        [self addSubview:textField];
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 110, 200, 44)];
        [button setBackgroundColor:[UIColor blueColor]];
        button.titleLabel.textColor =  [UIColor blackColor];
        [button setTitle:@"确定" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(completeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
        self.backgroundColor = [UIColor yellowColor];
        _textField = textField;
    
    }
    return self;
}

- (void)show{
    [self makeKeyWindow];
    self.hidden = NO;
}

- (void)completeButtonPressed:(UIButton*)button{
    [_textField resignFirstResponder];
    [self resignFirstResponder];
    self.hidden = YES;
}


@end
