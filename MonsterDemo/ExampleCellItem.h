//
//  CellItem.h
//  LD
//
//  Created by lydsnm on 15/11/5.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExampleCellItem : NSObject

@property (nonatomic, copy) NSString *ExampleName;
@property (nonatomic, copy) NSString *viewControllerName;

// optional
@property (nonatomic, copy) NSString *cellIconName;

+ (instancetype)itemWithExampleName:(NSString*)ExampleName VCName:(NSString*)viewControllerName;

@end
