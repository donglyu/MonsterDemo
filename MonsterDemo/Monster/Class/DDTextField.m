//
//  DDTextField.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/21.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "DDTextField.h"

@implementation DDTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/** to throw the delete btn in keyboard pressed event.*/
- (void)deleteBackward{
    [super deleteBackward];
    
    if (_DDTextFieldDelegate && [_DDTextFieldDelegate respondsToSelector:@selector(deleteBackward)]) {
        [_DDTextFieldDelegate deleteBackward];
    }
}



@end
