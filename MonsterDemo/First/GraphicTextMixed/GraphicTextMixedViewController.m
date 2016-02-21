//
//  GraphicTextMixedViewController.m
//  LD
//
//  Created by lydsnm on 15/11/7.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "GraphicTextMixedViewController.h"
#import "basicGraphicText.h"



@interface GraphicTextMixedViewController ()

@end

@implementation GraphicTextMixedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)basicGTBtnClick:(id)sender {
    [self.navigationController pushViewController:[[basicGraphicText alloc]init] animated:YES];
    
    
    
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
