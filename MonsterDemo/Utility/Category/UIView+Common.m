//
//  UIView+Common.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/28.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "UIView+Common.h"
#import "Masonry.h"
#import <objc/runtime.h>

@implementation UIView (Common)
static char BlankPageViewKey;






#pragma mark BlankPageView
- (void)setBlankPageView:(DDBlankPageView *)blankPageView{
    [self willChangeValueForKey:@"BlankPageViewKey"];
    objc_setAssociatedObject(self, &BlankPageViewKey,
                             blankPageView,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:@"BlankPageViewKey"];
}
- (DDBlankPageView *)blankPageView{
    return objc_getAssociatedObject(self, &BlankPageViewKey);
}



- (void)configBlankPage:(DDBlankPageType)blankPageType hasData:(BOOL)hasData hasError:(BOOL)hasError{
    if (hasData) {
        if (self.blankPageView) {
            self.blankPageView.hidden = YES;
            [self.blankPageView removeFromSuperview];
        }
    }else{
        if (!self.blankPageView) {
            self.blankPageView = [[DDBlankPageView alloc] initWithFrame:self.bounds];
        }
        self.blankPageView.hidden = NO;
        [self.blankPageContainer addSubview:self.blankPageView];
        
        //        [self.blankPageContainer insertSubview:self.blankPageView atIndex:0];
        //        [self.blankPageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //            make.size.equalTo(self);
        //            make.top.left.equalTo(self.blankPageContainer);
        //        }];
        [self.blankPageView ConfgBlankPageType:blankPageType hasData:hasData];
    }
}

- (UIView *)blankPageContainer{
    UIView *blankPageContainer = self;
    for (UIView *aView in [self subviews]) {
        if ([aView isKindOfClass:[UITableView class]]) {
            blankPageContainer = aView;
        }
    }
    return blankPageContainer;
}

@end


@implementation DDBlankPageView

- (void)ConfgBlankPageType:(DDBlankPageType)pageType  hasData:(BOOL)hasData{

    NSString *tipStr;
    
    
    if (hasData) {
        [self removeFromSuperview];
        return;
    }
    self.alpha = 1.0;
    
    switch (pageType) {
        case DDBlankPageViewNomalNoData:
            tipStr = @"无数据";
            break;
        default:
            break;
    }
    
    if (!_tipLabel) {
        _tipLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _tipLabel.backgroundColor = [UIColor clearColor];
        _tipLabel.numberOfLines = 0;
        _tipLabel.font = [UIFont systemFontOfSize:15];
        _tipLabel.textColor = [UIColor lightGrayColor];
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_tipLabel];
    }


    
    [_tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.centerX.equalTo(self);
        make.bottom.equalTo(self.mas_centerY);
        make.height.mas_equalTo(50);
    }];
    

    
    _tipLabel.text = tipStr;


}

@end