//
//  UIView+DD
//  LD
//
//  Created by lydsnm on 15/11/9.
//  Copyright © 2015年 lydsnm. All rights reserved.
//

#import "UIView+DD.h"

@implementation UIView (DD)

#pragma mark - setter & getter

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

// 画View四周的虚线
- (void)drawLineAroundView{
    //    NSLog(@"%@", showView.center);
//    // 1.贝塞尔曲线(创建一个圆)
//    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100 / 2.f, 100 / 2.f)
//                                                        radius:100 / 2.f
//                                                    startAngle:0
//                                                      endAngle:M_PI * 4
//                                                     clockwise:YES];
    
    // 2.直接在showView四周加上一个虚线
    CGPathRef pathRef = CGPathCreateWithRect(self.bounds, NULL);
    
    
    // 创建一个shapeLayer
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame         = self.bounds;                // 与showView的frame一致
    layer.strokeColor   = [UIColor greenColor].CGColor;   // 边缘线的颜色
    layer.fillColor     = [UIColor clearColor].CGColor;   // 闭环填充的颜色
    //layer.lineCap       = kCALineCapSquare;               // 边缘线的类型
    layer.path          = pathRef;//path.CGPath;                    // 从贝塞尔曲线获取到形状
    layer.lineWidth     = 4.0f;                           // 线条宽度
    layer.lineDashPattern = @[@(4),@(4)];
    layer.strokeStart   = 0.0f;
    layer.strokeEnd     = 1.0f;
    
    // 将layer添加进图层
    [self.layer addSublayer:layer];
    CGPathRelease(pathRef);
}

@end

#pragma mark - other helpful method

float DDDeviceSystemVersion(){
    static float version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        version = [UIDevice currentDevice].systemVersion.floatValue;
    });
    return version;
}

CGSize DDDeviceScreenSize() {
    static CGSize size;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        size = [UIScreen mainScreen].bounds.size;
        if (size.height <= size.width) {
            CGFloat tmp = size.height;
            size.height = size.width;
            size.width = tmp;
        }
    });
    return size;
}

CGRect DDDeviceScreenBounds(){
    static CGRect screenBounds;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        screenBounds = [UIScreen mainScreen].bounds;
    });
    return screenBounds;
}





