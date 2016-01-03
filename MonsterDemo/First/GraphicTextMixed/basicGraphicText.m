//
//  basicGraphicText.m
//  LD
//
//  Created by lydsnm on 15/11/7.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "basicGraphicText.h"
#import "YYText.h"
#import "UIView+LDAdd.h"

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
    
    // 自定义leftBarButtonItem
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"ttt" style:UIBarButtonItemStylePlain target:self action:nil];
//    self.navigationItem.leftBarButtonItem = barButtonItem;
    self.navigationItem.leftBarButtonItem.title = @"返回!";
    
    
    _showTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 70, kScreenWidth, 100)];
    _showTextField.backgroundColor = kBackgroundColor01;
    [self.view addSubview:_showTextField];
    [self noThirdGraphicText];
    
    
    _showTextView = [[YYTextView alloc]initWithFrame:CGRectMake(0, 180, kScreenWidth, 100)];
    _showTextView.backgroundColor = kBackgroundColor02;
    [self.view addSubview:_showTextView];
    
    _showLabel = [YYLabel new];
    _showLabel.frame = CGRectMake(0, 290, kScreenWidth, 100);
    _showLabel.backgroundColor = kBackgroundColor03;
    [self.view addSubview:_showLabel];
    [_showLabel drawLineAroundView];
    
    [self useThirdGraphicText];
}

- (void)useThirdGraphicText{
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] init];
    {
        NSMutableAttributedString *one = [[NSMutableAttributedString alloc] initWithString:@"富文本测试文字"];
        one.yy_font = [UIFont boldSystemFontOfSize:30];
        one.yy_color = [UIColor whiteColor];
        
        [text appendAttributedString:one];
    }

    _showLabel.attributedText = text;
    



}


-(void)noThirdGraphicText{
    {
//        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@"测试富文本"] ;
        
    }
    
//    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:24] range:NSMakeRange(0, [attributedString length])];
    
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
