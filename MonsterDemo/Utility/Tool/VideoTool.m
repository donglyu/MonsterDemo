//
//  VideoTool.m
//  NoteApp
//
//  Created by lyds on 1/17/16.
//  Copyright © 2016 SXH-PC. All rights reserved.
//

#import "VideoTool.h"
#import <AVFoundation/AVFoundation.h>


@interface VideoTool()

@end

@implementation VideoTool

+ (instancetype)sharedManager {
    static VideoTool *shared_manager = nil;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        shared_manager = [[self alloc] init];
    });
    return shared_manager;
}


/**
 *  截取指定时间的视频缩略图
 *
 *  @param timeBySecond 时间点
 */
-(UIImage*)thumbnailImageRequestIn:(NSURL*)url coverInSeconds:(CGFloat )timeBySecond{
    //根据url创建AVURLAsset
    AVURLAsset *urlAsset=[AVURLAsset assetWithURL:url];
    //根据AVURLAsset创建AVAssetImageGenerator
    AVAssetImageGenerator *imageGenerator=[AVAssetImageGenerator assetImageGeneratorWithAsset:urlAsset];
    /*截图
     * requestTime:缩略图创建时间
     * actualTime:缩略图实际生成的时间
     */
    NSError *error=nil;
    CMTime time=CMTimeMakeWithSeconds(timeBySecond, 10);//CMTime是表示电影时间信息的结构体，第一个参数表示是视频第几秒，第二个参数表示每秒帧数.(如果要获得某一秒的第几帧可以使用CMTimeMake方法)
    CMTime actualTime;
    CGImageRef cgImage= [imageGenerator copyCGImageAtTime:time actualTime:&actualTime error:&error];
    if(error){
        NSLog(@"截取视频缩略图时发生错误，错误信息：%@ \r\n %@",error.localizedDescription,error);
        return [UIImage imageWithColor:[UIColor darkTextColor] withFrame:CGRectMake(0, 0, 2, 2)];
    }
    CMTimeShow(actualTime);
    UIImage *image=[UIImage imageWithCGImage:cgImage];//转化为UIImage
    //保存到相册
//    UIImageWriteToSavedPhotosAlbum(image,nil, nil, nil);
    
    CGImageRelease(cgImage);
    
    return image;
}

- (void) lowQuailtyWithInputURL:(NSURL*)inputURL
                      outputURL:(NSURL*)outputURL
                   blockHandler:(void (^)(AVAssetExportSession*))handler
{
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    /*
     //AVAssetExportPresetLowQuality
     AVAssetExportPresetMediumQuality
     AVAssetExportPresetHighestQuality
     AVAssetExportPreset1920x1080
     AVAssetExportPreset1280x720
     AVAssetExportPreset960x540
     AVAssetExportPreset640x480
     */
    AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset presetName:AVAssetExportPresetMediumQuality];
    session.outputURL = outputURL;
    session.outputFileType = AVFileTypeQuickTimeMovie;
    session.shouldOptimizeForNetworkUse = YES;
    [session exportAsynchronouslyWithCompletionHandler:^(void)
     {
        
         switch (session.status) {
                 
             case AVAssetExportSessionStatusUnknown:
                 
                 NSLog(@"AVAssetExportSessionStatusUnknown");
                 
                 break;
                 
             case AVAssetExportSessionStatusWaiting:
                 
                 NSLog(@"AVAssetExportSessionStatusWaiting");
                 
                 break;
                 
             case AVAssetExportSessionStatusExporting:
                 
                 NSLog(@"AVAssetExportSessionStatusExporting");
                 
                 break;
                 
             case AVAssetExportSessionStatusCompleted:
                 
                 NSLog(@"AVAssetExportSessionStatusCompleted");
                 break;
                 
             case AVAssetExportSessionStatusFailed:
                 
                 NSLog(@"AVAssetExportSessionStatusFailed");
                  NSLog(@"error: %@ \r\n%@", session.error.localizedDescription, session.error) ;
                 break;
                 
             case AVAssetExportSessionStatusCancelled:
                 
                 NSLog(@"AVAssetExportSessionStatusCancelled");
                 
                 break;
                 
             default:
                 
                 break;
                 
         }
         handler(session);
     }];
}

//- (void) lowQuailtyWithInputAsset:(ALAsset*)inputAsset
//                      outputURL:(NSURL*)outputURL
//                   blockHandler:(void (^)(AVAssetExportSession*))handler
//{
////    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
//    AVAsset *asset = [AVAsset assetWithURL:<#(nonnull NSURL *)#>]
//    /*
//     //AVAssetExportPresetLowQuality
//     AVAssetExportPresetMediumQuality
//     AVAssetExportPresetHighestQuality
//     AVAssetExportPreset1920x1080
//     AVAssetExportPreset1280x720
//     AVAssetExportPreset960x540
//     AVAssetExportPreset640x480
//     */
//    AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:inputAsset presetName:AVAssetExportPreset640x480];
//    session.outputURL = outputURL;
//    session.outputFileType = AVFileTypeQuickTimeMovie;
//    session.shouldOptimizeForNetworkUse = YES;
//    [session exportAsynchronouslyWithCompletionHandler:^(void)
//     {
//         handler(session);
//     }];
//}


@end
