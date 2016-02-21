//
//  XibUseViewController.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
// http://www.cocoachina.com/ios/20150202/11086.html

#import "XibUseViewController.h"
#import "XibUseView.h"

@interface XibUseViewController ()

@property (nonatomic, strong) XibUseView *xibView;

@end

@implementation XibUseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)showViewFromXib:(UIButton *)sender {
    if (self.xibView == nil) {
        _xibView = [XibUseView xibUseView];
        _xibView.centerX = self.view.centerX;
        _xibView.centerY = self.view.height * 0.5;
        [self.view addSubview:_xibView];
    }else{
        [self.xibView removeFromSuperview];
        self.xibView = nil;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
