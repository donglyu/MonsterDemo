//
//  DnotKonwHeigthOfPhotoController.m
//  MonsterDemo
//
//  Created by donglyu on 16/3/19.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "DnotKonwHeigthOfPhotoController.h"
#import "Masonry.h"

@interface DnotKonwHeigthOfPhotoController ()
@property (nonatomic, weak) UIScrollView *scrollView;
@property (nonatomic, weak) UIView *containerView;

@property (nonatomic, weak) UIImageView *imageView1;
@property (nonatomic, weak) UIImageView *imageView2;
@end

@implementation DnotKonwHeigthOfPhotoController
- (UIScrollView*)scrollView{
    if (_scrollView == nil){
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:scrollView];
        _scrollView = scrollView;
    }
    return _scrollView;
}


// 参考http://www.cocoachina.com/bbs/read.php?tid=301146
- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.scrollView.backgroundColor = [UIColor clearColor];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(0,0,0,0));//UIEdgeInsetsMake(5,5,5,5));
    }];
    
    
    UIView *container = [[UIView alloc] init];
    [self.scrollView addSubview:container];
    _containerView =  container;
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.scrollView);
        make.width.equalTo(self.scrollView);
    }];
    debugSetBgColor(container);
        // 先摆上去, 然后等一会, 设置高度, 下面那个会变?
    
    
    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.clipsToBounds = YES;
    imageView1.contentMode = UIViewContentModeScaleToFill;
    debugSetBgColor(imageView1);
    [self.containerView addSubview:imageView1];
    _imageView1 = imageView1;
    [imageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.equalTo(container);
        make.top.equalTo(container.mas_top);
        make.height.equalTo(imageView1);
    }];
    
    UIImageView *imageView2 = [[UIImageView alloc] init];
    imageView2.clipsToBounds = YES;
    debugSetBgColor(imageView2);
    imageView2.contentMode = UIViewContentModeScaleAspectFill;
    [self.containerView addSubview:imageView2];
    _imageView2 = imageView2;
    imageView2.image = [UIImage imageNamed:@"photo1"];
    [imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imageView1.mas_bottom);
    }];
    
    
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(imageView2.mas_bottom);
    }];
    
    
    
    
    [self delayToLoadPhoto];
}

- (void)delayToLoadPhoto{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(3);
        dispatch_async(dispatch_get_main_queue(), ^{
            UIImage *newImage = [UIImage imageNamed:@"photo10"];
            self.imageView1.image  = newImage;
            CGFloat ImageViewNewHeight = (newImage.size.height *self.view.width / newImage.size.width);
            DLog(@"imageView's height should be %f", ImageViewNewHeight);
//            self.imageView1.height = 100;//ImageViewNewHeight;
            [self.imageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.height.equalTo(@(ImageViewNewHeight));
            }];
            
            
            DLog(@"imageView2's y & height: %f & %f", self.imageView2.frame.origin.y, self.imageView2.frame.size.height);

        });
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
