//
//  GCDCanceller.m
//  MonsterDemo
//
//  Created by donglyu on 16/4/17.
//  Copyright © 2016年 lydsnm. All rights reserved.
//  GCD 手动停止线程

#import "GCDCanceller.h"

@interface GCDCanceller (){
    BOOL _shouldCancel;
}



@end

@implementation GCDCanceller

- (void)setShouldCancel:(BOOL)shouldCancel {
    _shouldCancel = shouldCancel;
}
- (BOOL)shouldCancel {
    return _shouldCancel;
}
//
//static void test(int a){
//    static GCDCanceller * canceller = nil;
//    
//    if(q){
//        [canceller setShouldCancel:YES];
//        [canceller release];
//        dispatch_suspend(q);
//        dispatch_release(q);
//        q=nil;
//    }
//    canceller = [[Canceller alloc] init];
//    q=dispatch_get_global_queue(0,0);
//    dispatch_async(q,^ {
//        while(![canceller shouldCancel]){NSLog(@"query %d",a);sleep(2);}
//    });
//    
//}

@end
