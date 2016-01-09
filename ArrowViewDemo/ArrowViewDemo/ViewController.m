//
//  ViewController.m
//  ArrowViewDemo
//
//  Created by litt1e-p on 16/1/8.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "ViewController.h"
#import "ArrowView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ArrowView *av = [[ArrowView alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 0.5 - 50, 200, 100, 120)];
    [self.view addSubview:av];
}

@end
