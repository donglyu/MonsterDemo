//
//  basicGraphicText.m
//  LD
//
//  Created by lydsnm on 15/11/7.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "basicGraphicText.h"
#import "YYKit/YYkit.h"
#import "UIView+DD.h"

@interface basicGraphicText ()
@property (nonatomic, strong) YYTextView *showTextView;
@property (nonatomic, strong) UITextField *showTextField;
@property (nonatomic, strong) YYLabel *showLabel;
@end

@implementation basicGraphicText

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"基本图文混排";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 自定义leftBarButtonItem
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"ttt" style:UIBarButtonItemStylePlain target:self action:nil];
//    self.navigationItem.leftBarButtonItem = barButtonItem;
    self.navigationItem.leftBarButtonItem.title = @"返回!";
    
//    
    [self useThirdGraphicText];
}

- (void)useThirdGraphicText{
    



}


-(void)noThirdGraphicText{

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
