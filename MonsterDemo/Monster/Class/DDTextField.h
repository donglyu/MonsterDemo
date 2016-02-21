//
//  DDTextField.h
//  MonsterDemo
//
//  Created by donglyu on 16/2/21.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DDTextFieldDelegate <NSObject>

@optional
- (void)deleteBackward;

@end

@interface DDTextField : UITextField

@property (nonatomic, weak) id<DDTextFieldDelegate> DDTextFieldDelegate;
@end
