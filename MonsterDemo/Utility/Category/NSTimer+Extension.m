//
//  NSTimer+Extension.m
//  NoteApp
//
//  Created by lyds on 1/19/16.
//  Copyright © 2016 SXH-PC. All rights reserved.
//

#import "NSTimer+Extension.h"

@implementation NSTimer (Extension)
-(void)pauseTimer{
    
    if (![self isValid]) {
        return ;
    }
    
    [self setFireDate:[NSDate distantFuture]]; //如果给我一个期限，我希望是4001-01-01 00:00:00 +0000
    
    
}


-(void)resumeTimer{
    
    if (![self isValid]) {
        return ;
    }
    
    //[self setFireDate:[NSDate dateWithTimeIntervalSinceNow:0]];
    [self setFireDate:[NSDate date]];
    
}
@end
