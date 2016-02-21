//
//  NSString+Extension.h
//  TimelineView
//
//  Created by SXH-PC on 15/11/23.
//  Copyright © 2015年 SXH-PC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Ext)
/** use for fileName*/
+ (NSString*)stringWithPureUUID;

- (NSString *)getMyMd5:(NSString *)str;
- (NSString*)initTelephoneWithReformat;
- (NSString *)URLEncoding;
- (BOOL)containsString:(NSString *)aString;

/** NSString to JSON/ NSArray NSDictionary */
-(id)JSONValue;

@end
