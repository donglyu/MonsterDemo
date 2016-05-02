//
//  CircleProgressWithMask.m
//  testCircleProgress
//
//  Created by donglyu on 16/5/2.
//  Copyright © 2016年 donglyu. All rights reserved.
//

#import "CircleProgressWithMask.h"


@interface CircleProgressWithMask()



@end

@implementation CircleProgressWithMask

// ld
+ (instancetype) sharedInstance{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
    });
    return sharedInstance;
}

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        
        _circleProgressBar = [[CircleProgressBar alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _circleProgressBar.center = self.center;
        _circleProgressBar.backgroundColor = [UIColor clearColor];
        [self addSubview:_circleProgressBar];
        [self customizeCircleProgressBar];
        
        
    }
    return self;
}

- (void)show{
    [self makeKeyWindow];
    self.hidden = NO;
}

- (void)dismiss{
    self.hidden = YES;
}

- (void)customizeCircleProgressBar{
    BOOL customized = 1;
    // Progress Bar Customization
    [_circleProgressBar setProgressBarWidth:(customized ? 12.0f : 0)];
    [_circleProgressBar setProgressBarProgressColor:(customized ? [UIColor colorWithRed:0.2 green:0.7 blue:1.0 alpha:0.8] : nil)];
    [_circleProgressBar setProgressBarTrackColor:(customized ? [UIColor colorWithWhite:0.000 alpha:0.800] : nil)];

    // Hint View Customization
    [_circleProgressBar setHintViewSpacing:(customized ? 10.0f : 0)];
    [_circleProgressBar setHintViewBackgroundColor:(customized ? [UIColor colorWithWhite:1.000 alpha:0.800] : nil)];
    [_circleProgressBar setHintTextFont:(customized ? [UIFont fontWithName:@"AvenirNextCondensed-Heavy" size:16.0f] : nil)];
    [_circleProgressBar setHintTextColor:(customized ? [UIColor blackColor] : nil)];
    [_circleProgressBar setHintTextGenerationBlock:(customized ? ^NSString *(CGFloat progress) {
        return [NSString stringWithFormat:@"%.0f / 255", progress * 255];
    } : nil)];

    // Attributed String
    [_circleProgressBar setHintAttributedGenerationBlock:(customized == 1 ? ^NSAttributedString *(CGFloat progress) {
        NSString *formatString = [NSString stringWithFormat:@"%.0f / 255", progress * 255];
        NSMutableAttributedString * string = [[NSMutableAttributedString alloc] initWithString:formatString];
        [string addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"AvenirNextCondensed-Heavy" size:16.0f] range:NSMakeRange(0, string.length)];

        NSArray *components = [formatString componentsSeparatedByString:@"/"];
        UIColor *valueColor = [UIColor colorWithRed:(0.2f) green:(0.2f) blue:(0.5f + progress * 0.5f) alpha:1.0f];
        [string addAttribute:NSForegroundColorAttributeName value:valueColor range:NSMakeRange(0, [[components firstObject] length])];
        [string addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange([[components firstObject] length], 1)];
        [string addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange([[components firstObject] length] + 1, [[components lastObject] length])];
        return string;
    } : nil)];
}


@end
