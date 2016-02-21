//
//  CellItem.m
//  LD
//
//  Created by lydsnm on 15/11/5.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "ExampleCellItem.h"

@implementation ExampleCellItem
+(instancetype)itemWithExampleName:(NSString*)exampleName VCName:(NSString*)viewControllerName{
    ExampleCellItem *item = [[self alloc] init];
    item.exampleName = exampleName;
    item.viewControllerName = viewControllerName;
    
    
    return item;
}

@end
