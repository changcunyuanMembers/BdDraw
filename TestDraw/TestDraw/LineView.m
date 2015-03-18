//
//  LineView.m
//  TestDraw
//
//  Created by Liang on 15/3/18.
//  Copyright (c) 2015年 张伊辉. All rights reserved.
//

#import "LineView.h"

@implementation LineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //画线
    CGContextSetLineWidth(context, 10.0);
    CGContextSetLineCap(context, kCGLineCapRound);//画线角度是圆的。

    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    
    CGContextMoveToPoint(context, 10, 10);
    //画直线
//    CGContextAddLineToPoint(context, 100, 100);
    
    //画弧线
    CGContextAddCurveToPoint(context, 60, 60, 180, 280, 300, 300);
    
    CGContextStrokePath(context);

    
    
    //画虚线
    CGFloat dashArray[] = {2,6,4,2};
    
    //跳过3个再画虚线，所以刚开始有6-（3-2）=5个虚点
    CGContextSetLineDash(context, 0, dashArray, 2);
    
    CGContextMoveToPoint(context, 10, 10);
    CGContextAddLineToPoint(context, 120, 10);
    
    CGContextStrokePath(context);
    
    
    /*绘制虚线
     CGContextSetLineWidth(context, 5.0);
     
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     
     CGFloat dashArray[] = {2,6,4,2};
     
     CGContextSetLineDash(context, 3, dashArray, 4);//跳过3个再画虚线，所以刚开始有6-（3-2）=5个虚点
     
     CGContextMoveToPoint(context, 10, 200);
     
     CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
     
     CGContextStrokePath(context);
     */
    
    
    /*
     绘制贝兹曲线
     //贝兹曲线是通过移动一个起始点，然后通过两个控制点,还有一个中止点，调用CGContextAddCurveToPoint() 函数绘制
     
     CGContextSetLineWidth(context, 2.0);
     
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     
     CGContextMoveToPoint(context, 10, 10);
     
     CGContextAddCurveToPoint(context, 0, 50, 300, 250, 300, 400);
     
     CGContextStrokePath(context);
     */
    
    /*绘制二次贝兹曲线
     
     CGContextSetLineWidth(context, 2.0);
     
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     
     CGContextMoveToPoint(context, 10, 200);
     
     CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
     
     CGContextStrokePath(context);
     */
    
    /*
     
     UIColor *aColor = [UIColor colorWithRed:0 green:1.0 blue:0 alpha:0];
     CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1.0);
     CGContextSetFillColorWithColor(context, aColor.CGColor);
     CGContextSetLineWidth(context, 4.0);
     CGPoint aPoints[5];
     aPoints[0] =CGPointMake(60, 60);
     aPoints[1] =CGPointMake(260, 60);
     aPoints[2] =CGPointMake(260, 300);
     aPoints[3] =CGPointMake(60, 300);
     aPoints[4] =CGPointMake(60, 60);
     CGContextAddLines(context, aPoints, 5);
     CGContextDrawPath(context, kCGPathStroke); //开始画线
     
     */


}


@end
