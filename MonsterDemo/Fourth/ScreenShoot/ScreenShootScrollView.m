//
//  ScreenShootScrollView.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/28.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "ScreenShootScrollView.h"
#import "UIScrollView+DD.h"

@interface ScreenShootScrollView ()

@property (nonatomic, weak) UIScrollView *baseScrollView;

@property (nonatomic, weak) UIImageView *testImageView01;
@end

@implementation ScreenShootScrollView

- (UIScrollView*)baseScrollView{
    if (_baseScrollView == nil){
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height - 130)];
        [self.view addSubview:scrollView];
        scrollView.backgroundColor = [UIColor purpleColor];
        _baseScrollView = scrollView;
    }
    return _baseScrollView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *screenShotBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    screenShotBtn.bounds = CGRectMake(0, 0, 200, 44);
    screenShotBtn.center = self.view.center;
    [screenShotBtn setTitle:@"截取scrollView的所有内容" forState:UIControlStateNormal];
    [screenShotBtn addTarget:self action:@selector(screenShoot) forControlEvents:UIControlEventTouchUpInside];
    [self.baseScrollView addSubview:screenShotBtn];
    
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"asdf"]];
    
    [self.baseScrollView setContentSize:CGSizeMake(self.view.width, self.view.height + 400)];
    [self.baseScrollView addSubview:imageView];
    imageView.x = 0;
    imageView.y = self.view.height - 160;
    _testImageView01 = imageView;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"测试文字内容是否也会被截屏在里面";
    [imageView addSubview:label];
    
    
    
}

- (void)screenShoot{
    UIImage *scrollViewScreenShotImage = [self.baseScrollView captureScrollView:self.baseScrollView];
    UIImageWriteToSavedPhotosAlbum(scrollViewScreenShotImage, self, nil, NULL);//@selector(image:didFinishSavingWithError:contextInfo:)
    kTipAlert(@"已保存至相册");
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
