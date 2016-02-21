//
//  XibUseView.m
//  MonsterDemo
//
//  Created by donglyu on 16/2/20.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "XibUseView.h"

@interface XibUseView ()
@property (weak, nonatomic) IBOutlet UILabel *labelTopLabel;

@end

@implementation XibUseView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void) setLabelTopShowContent:(NSString *)labelTopShowContent{
    _labelTopShowContent = labelTopShowContent;
    self.labelTopLabel.text = labelTopShowContent;
}

+ (instancetype) xibUseView{
    
    NSBundle *bundle=[NSBundle mainBundle];
    NSArray *objs=[bundle loadNibNamed:@"xibUseView" owner:nil options:nil];
    return [objs lastObject];
    
}


- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        // custom init.
    }
    return self;
}

@end
