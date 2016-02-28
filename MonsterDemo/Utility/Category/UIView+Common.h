//
//  UIView+Common.h
//  MonsterDemo
//
//  Created by donglyu on 16/2/28.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, DDBlankPageType){
    DDBlankPageViewNomalNoData = 0,
    DDBlankPageViewNeedReloadMore
};



@class DDBlankPageView;
@interface UIView (Common)

@property (strong, nonatomic) DDBlankPageView *blankPageView;
- (void)configBlankPage:(DDBlankPageType)blankPageType hasData:(BOOL)hasData hasError:(BOOL)hasError;

@end


@interface DDBlankPageView : UIView;




@property (strong, nonatomic) UILabel *tipLabel;

- (void)ConfgBlankPageType:(DDBlankPageType)pageType  hasData:(BOOL)hasData;

@end
