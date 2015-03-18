//
//  BoardView.m
//  TestDraw
//
//  Created by Liang on 15/3/18.
//  Copyright (c) 2015年 张伊辉. All rights reserved.
//

#import "BoardView.h"

@implementation BoardView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();

    // Drawing code
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGRect rectangle = CGRectMake(10,10,100,40);
    CGContextAddRect(context, rectangle);
    CGContextStrokePath(context);
    
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    CGContextFillRect(context, rectangle);
    
}


@end
