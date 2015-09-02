//
//  ViewController.m
//  TTPaintCode
//
//  Created by TonyTong on 15/9/2.
//  Copyright (c) 2015年 TonyTong. All rights reserved.
//

#import "ViewController.h"
#import "TTPaintCodeTutorial.h"
#import "TTStopwatchView.h"
#import "TTStopwatchHandView.h"
#import "TTStarView.h"

@interface ViewController ()
@property (nonatomic, strong) TTStopwatchHandView *stopWatchHandView;
@property (nonatomic, strong) TTStopwatchView *stopWatchView;;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.stopWatchView =  [[TTStopwatchView alloc]initWithFrame:CGRectMake(0, 0, 250, 250)];
    self.stopWatchView.backgroundColor = [UIColor clearColor];
    self.stopWatchView.center = self.view.center;
    [self.view addSubview:self.stopWatchView];
    
    self.stopWatchHandView = [[TTStopwatchHandView alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds)/2-250/2, CGRectGetHeight(self.view.bounds)/2-220/2+12, 250, 220)];
    self.stopWatchHandView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.stopWatchHandView];
    
    TTStarView *star = [[TTStarView alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds)/2-50, self.stopWatchHandView.frame.origin.y+250, 100, 18)];
    star.backgroundColor = [UIColor clearColor];
    [self.view addSubview:star];
    
    [self rotateStopWatchHand];
    
}
- (void) rotateStopWatchHand{
    
    
    [UIView animateWithDuration:2.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        [self.stopWatchHandView setTransform :CGAffineTransformRotate(self.stopWatchHandView.transform,(CGFloat)M_PI_2)];
    } completion:^(BOOL finished) {
        [self rotateStopWatchHand ];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
