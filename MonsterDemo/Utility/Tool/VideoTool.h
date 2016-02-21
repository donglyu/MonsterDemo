//
//  VideoTool.h
//  NoteApp
//
//  Created by lyds on 1/17/16.
//  Copyright © 2016 SXH-PC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface VideoTool : NSObject
+ (instancetype)sharedManager ;
-(UIImage*)thumbnailImageRequestIn:(NSURL*)url coverInSeconds:(CGFloat)timeBySecond;
/** 使用系统提供的方法,对视频进行压缩.*/
- (void) lowQuailtyWithInputURL:(NSURL*)inputURL
                      outputURL:(NSURL*)outputURL
                   blockHandler:(void (^)(AVAssetExportSession*))handler;

@end
