//
//  TTStopwatchView.m
//  TTPaintCode
//
//  Created by TonyTong on 15/9/2.
//  Copyright (c) 2015年 TonyTong. All rights reserved.
//

#import "TTStopwatchView.h"
#import "TTPaintCodeTutorial.h"

@implementation TTStopwatchView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [TTPaintCodeTutorial drawStopwatch];
}


@end
