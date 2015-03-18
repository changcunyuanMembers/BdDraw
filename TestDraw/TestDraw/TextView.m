//
//  TextView.m
//  TestDraw
//
//  Created by Liang on 15/3/18.
//  Copyright (c) 2015年 张伊辉. All rights reserved.
//

#import "TextView.h"

@implementation TextView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    
    CGContextSetTextDrawingMode(ref, kCGTextFill);
    CGContextSetFillColorWithColor(ref, [UIColor greenColor].CGColor);
    
    //绘制文字2
    CGAffineTransform filp2 = CGAffineTransformMake(1, 0, 0, -1, 0,0);
    CGContextSetTextMatrix(ref, filp2);
    CGContextSelectFont(ref, "Helvetica", 40, kCGEncodingMacRoman);
    CGContextShowTextAtPoint(ref, 10, 10, "nihao", 5);
    
    
    CGContextSetTextDrawingMode(ref, kCGTextStroke);
    
    //默认文字是倒着的，需要旋转。
    CGContextSetLineWidth(ref, 1);
    CGContextSetStrokeColorWithColor(ref, [UIColor blueColor].CGColor);
    
    //绘制文字
    CGAffineTransform filp = CGAffineTransformMake(1, 0, 0, -1, 0,0);
    CGContextSetTextMatrix(ref, filp);
    CGContextSelectFont(ref, "Helvetica", 40, kCGEncodingMacRoman);
    CGContextShowTextAtPoint(ref, 10, 40, "nihao2", 6);
}


@end
