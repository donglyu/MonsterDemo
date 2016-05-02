//
//  GCDCanceller.h
//  MonsterDemo
//
//  Created by donglyu on 16/4/17.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCDCanceller : NSObject
- (void)setShouldCancel:(BOOL)shouldCancel;
- (BOOL)shouldCancel;

@end
