//
//  ArcView.m
//  TestDraw
//
//  Created by Liang on 15/3/18.
//  Copyright (c) 2015年 张伊辉. All rights reserved.
//

#import "ArcView.h"

@implementation ArcView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat x = 50.0f;
    CGFloat y = 60.0f;
    CGFloat radius = 40.0f;

    //开始向上下文中增加路径，即-开始绘图
    CGContextBeginPath(ctx);
    
    CGContextMoveToPoint(ctx, x, y);
    
    //画圆      开始坐标x，y  半径 开始弧度 结束弧度  顺时针和逆时针
    CGContextAddArc(ctx, x, y, radius, 0, M_PI/2, YES);
    
    //设置填充颜色
    CGContextSetRGBFillColor(ctx, 0, 1, 0, 1);
    
    //填充一个区域
    CGContextFillPath(ctx);
    // Drawing code
}


@end
