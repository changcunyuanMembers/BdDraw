//
//  ShapeView.m
//  TestDraw
//
//  Created by Liang on 15/3/18.
//  Copyright (c) 2015年 张伊辉. All rights reserved.
//

#import "ShapeView.h"

@implementation ShapeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    {   //椭圆或者圆（width = height）
        CGRect bRect = CGRectMake(0, 0, 100, 50);
    
        CGContextSetFillColorWithColor(context, [UIColor purpleColor].CGColor);
        CGContextSetLineWidth(context, 2);
        CGContextAddEllipseInRect(context, bRect);
        CGContextDrawPath(context, kCGPathFill);
    }
    
    {
        //镂空样式
        
        CGRect bRect = CGRectMake(100, 5, 100, 50);
        
        CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
        CGContextSetLineWidth(context, 2);
        CGContextAddEllipseInRect(context, bRect);
        //镂空
        CGContextStrokePath(context);
        CGContextDrawPath(context, kCGPathFill);
        
        
    }
    
    {
        //矩形
        CGRect bRect = CGRectMake(200, 5, 100, 50);
        CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
        CGContextSetLineWidth(context, 2);

        CGContextFillRect(context, bRect);
        CGContextDrawPath(context, kCGPathFill);

    }
    
    {
        //多边形
        CGContextMoveToPoint(context, 50, 50);
        CGContextAddLineToPoint(context, 150, 150);
        CGContextAddLineToPoint(context, 100, 200);
//      CGContextAddLineToPoint(context, 50, 150);
//      CGContextAddLineToPoint(context, 100, 100);
        
        //镂空
        //CGContextStrokePath(context);
        CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
        CGContextFillPath(context);
    }
    
    

}


@end
