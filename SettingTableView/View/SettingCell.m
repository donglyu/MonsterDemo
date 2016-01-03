//
//  SettingCell.m
//  LDLibs
//
//  Created by lydsnm on 15/11/1.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "SettingCell.h"
#import "SettingItem.h"
#import "SettingArrowDestItem.h"

@interface SettingCell()

@property (nonatomic, strong) UIImageView *rightImageView;

@end


@implementation SettingCell

// 重写item方法
- (void) setCellItem:(SettingItem *)cellItem{
    _cellItem = cellItem;
    
    [self setData];
    [self setAccessoryView];
}

- (UIImageView *)rightImageView{
    if (nil == _rightImageView){
        _rightImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow.png"]];
    }
    return _rightImageView;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void) setData{
    self.imageView.image = [UIImage imageNamed:self.cellItem.iconName];
    self.textLabel.text = self.cellItem.title;
    self.detailTextLabel.text = self.cellItem.normalRightText;
}

-(void) setAccessoryView{
    if ([self.cellItem isMemberOfClass:[SettingItem class]]) {
        if (self.cellItem.normalRightText.length) {
            self.detailTextLabel.text = self.cellItem.normalRightText;// use defualt
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    else if([self.cellItem isKindOfClass:[SettingArrowDestItem class]]){
        self.accessoryView = self.rightImageView;
    }
    else{
        self.accessoryView = nil;
        self.accessoryType = UITableViewCellSelectionStyleNone;
    }
    
    

}

+ (instancetype) cellWithSettingTableView:(UITableView*)tableView{
    static NSString *ID = @"SettingCell";
    SettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (nil == cell) {
        
        
        cell = [[SettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
}

@end
