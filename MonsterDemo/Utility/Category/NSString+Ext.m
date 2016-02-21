//
//  NSString+Extension.m
//  TimelineView
//
//  Created by SXH-PC on 15/11/23.
//  Copyright © 2015年 SXH-PC. All rights reserved.
//

#import "NSString+Ext.h"

#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Ext)

+ (NSString*) stringWithPureUUID
{
    CFUUIDRef uuidObj = CFUUIDCreate(nil);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuidObj);
    CFRelease(uuidObj);
    return [uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""];
};


- (NSString *)getMyMd5:(NSString *)str

{
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result); // This is the md5 call
    return [NSString stringWithFormat:
            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",    // 小写 x 表示输出的是小写 MD5 ，大写 X 表示输出的是大写 MD5
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (BOOL)containsString:(NSString *)aString
{
    NSRange range = [[self lowercaseString] rangeOfString:[aString lowercaseString]];
    return range.location != NSNotFound;
}

- (NSString *)URLEncoding
{
    NSString * result = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes( kCFAllocatorDefault,
                                                                                              (CFStringRef)self,
                                                                                              NULL,
                                                                                              CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                              kCFStringEncodingUTF8 ));
    return result;
}

- (NSString*)initTelephoneWithReformat
{
    if ([self containsString:@"-"])
    {
        self = [self stringByReplacingOccurrencesOfString:@"-" withString:@""];
    }
    
    if ([self containsString:@" "])
    {
        self = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    }
    
    if ([self containsString:@"("])
    {
        self = [self stringByReplacingOccurrencesOfString:@"(" withString:@""];
    }
    
    if ([self containsString:@")"])
    {
        self = [self stringByReplacingOccurrencesOfString:@")" withString:@""];
    }
    return self;
}

/** deprecated ! mjExtention already exist.*/
-(id)JSONValue
{
    NSData* data = [self dataUsingEncoding:NSUTF8StringEncoding];
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (error != nil) return nil;
    return result;
}




@end
