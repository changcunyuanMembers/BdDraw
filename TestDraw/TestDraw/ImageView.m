//
//  ImageView.m
//  TestDraw
//
//  Created by Liang on 15/3/18.
//  Copyright (c) 2015年 张伊辉. All rights reserved.
//

#import "ImageView.h"

@implementation ImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"png"];
    UIImage *img = [UIImage imageWithContentsOfFile:path];
    CGImageRef image = img.CGImage;
    
    //转换方式一
    CGContextTranslateCTM(context, 0, img.size.height);
    CGContextScaleCTM(context, 1, -1);
    
    //转换方式二
//    CGContextRotateCTM(context, M_PI);
//    CGContextTranslateCTM(context, -img.size.width, -img.size.height);
    
    CGRect touchRect = CGRectMake(10, -30, img.size.width, img.size.height);
    
    CGContextDrawImage(context, touchRect, image);
}


@end
