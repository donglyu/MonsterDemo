//
//  TestVC01.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
//  http://www.2cto.com/kf/201312/268724.html

#import "TestVC01.h"
#import "NSObject+HudTipHandler.h"

@interface TestVC01()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *gradientLayerTestView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicatorView;

@property (weak, nonatomic) IBOutlet UITextView *testTextView;
@end

@implementation TestVC01



- (void)viewDidLoad{
    [super viewDidLoad];
    // notice
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notice:) name:notificationName object:nil];

    
    // ====
    self.gradientLayerTestView.image = [UIImage imageNamed:@"asd"];
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.gradientLayerTestView.bounds;
    [self.gradientLayerTestView.layer addSublayer:gradientLayer];
    
    // 渐变方向
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
    // 颜色组
    gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                             (__bridge id)[UIColor greenColor].CGColor];
    // 颜色分割点
    gradientLayer.locations = @[@(0.5f), @(1.0f)];
    
    //
//    self.testTextView.returnKeyType = UIReturnKeySearch;
    self.testTextView.delegate = self;
}


- (IBAction)buttonClick:(id)sender {
    [NSObject showHudWithCheckmark:@"checked" WithCompleteBlock:^{
    }];
}


NSString *notificationName = @"test";
- (IBAction)PostNotification:(id)sender {
    NSDictionary *userInfoDict = @{
                                   @"userName":@"zhangsan",
                                   @"pwd" : @"123"
                                   };
    NSNotification *notification = [NSNotification notificationWithName:notificationName object:nil userInfo:userInfoDict]; // or self.
    [[NSNotificationCenter defaultCenter] postNotification:notification];
    
    
}

- (IBAction)showUIActivityIndicatorView:(id)sender {
//    self.indicatorView.bounds = CGRectMake(0, 0, 20, 20);
    self.indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    self.indicatorView.hidesWhenStopped = YES;
    if ([self.indicatorView isAnimating]) {
        [self.indicatorView stopAnimating];
    }else{
        [self.indicatorView startAnimating];
    }
    
    
    
}


#pragma mark - notice
- (void)notice:(NSDictionary *)dict{
    NSLog(@"%@", dict);
    [NSObject showHudTipStr:@"get the oberser"];

}


- (void)textViewDidEndEditing:(UITextView *)textView{

}


- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
