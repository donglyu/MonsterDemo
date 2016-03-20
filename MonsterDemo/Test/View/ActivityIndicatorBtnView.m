//
//  ActivityIndicatorBtnView.m
//  MonsterDemo
//
//  Created by donglyu on 16/3/6.
//  Copyright © 2016年 lydsnm. All rights reserved.
//
// default: White.

#import "ActivityIndicatorBtnView.h"

@interface ActivityIndicatorBtnView ()

@property (nonatomic, weak) UIActivityIndicatorView *indicatorView;
@property (nonatomic, weak) UIButton *button;

@end

@implementation ActivityIndicatorBtnView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype) activityIndicatorBtnViewWithTitle:(NSString*)title andFrame:(CGRect)frame{
    ActivityIndicatorBtnView *view = [[ActivityIndicatorBtnView alloc] initWithFrame:frame];
    [view.button setTitle:title forState:UIControlStateNormal];
    
    return view;
}

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        [self addSubview:indicatorView];
        _indicatorView = indicatorView;
        [indicatorView startAnimating];
        DLog(@"startAnimating");
        [indicatorView stopAnimating];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"title" forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:14];
        [self addSubview:button];
        button.enabled = NO;
        _button = button;
    }
    return self;
}

- (void)layoutSubviews{
    self.button.x = CGRectGetMaxX(self.indicatorView.frame);
    [self.button sizeToFit];
    self.width = CGRectGetMaxX(self.button.frame);

    
    self.indicatorView.centerY = self.centerY;
    self.button.centerY = self.centerY;
//    self.height = 
}


@end
