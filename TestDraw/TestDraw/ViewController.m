//
//  ViewController.m
//  TestDraw
//
//  Created by 张伊辉 on 13-10-20.
//  Copyright (c) 2013年 张伊辉. All rights reserved.
//

#import "ViewController.h"

#import "ArcView.h"
#import "LineView.h"
#import "ShapeView.h"
#import "BoardView.h"
#import "TextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    [scrollView setContentSize:CGSizeMake(scrollView.bounds.size.width, 1000)];
    [self.view addSubview:scrollView];
    
    ArcView *_arcView = [[ArcView alloc]initWithFrame:CGRectMake(0, 0, 150, 150)];
    _arcView.backgroundColor = [UIColor clearColor];
    [scrollView addSubview:_arcView];

    
    LineView *_lineView = [[LineView alloc] initWithFrame:CGRectMake(0, 150, 150, 150)];
    _lineView.backgroundColor = [UIColor clearColor];
    [scrollView addSubview:_lineView];
    
    ShapeView *_shapeView = [[ShapeView alloc] initWithFrame:CGRectMake(0, 300, 320, 320)];
    _shapeView.backgroundColor = [UIColor clearColor];
    [scrollView addSubview:_shapeView];
    
    BoardView *_view1 = [[BoardView alloc] initWithFrame:CGRectMake(0, 500, 150, 100)];
    _view1.backgroundColor = [UIColor clearColor];
    [scrollView addSubview:_view1];
    
    TextView *_text = [[TextView alloc] initWithFrame:CGRectMake(0, 600, 150, 150)];
    [scrollView addSubview:_text];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
