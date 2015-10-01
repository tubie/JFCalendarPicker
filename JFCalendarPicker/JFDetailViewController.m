//
//  JFDetailViewController.m
//  JFCalendarPicker
//
//  Created by 保修一站通 on 15/10/1.
//  Copyright (c) 2015年 JF. All rights reserved.
//

#import "JFDetailViewController.h"

@interface JFDetailViewController ()

@end

@implementation JFDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(30, 50, 60, 30);
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    self.deteilLabel.textColor = [UIColor purpleColor];
}

-(void)buttonClick{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];

}

@end
