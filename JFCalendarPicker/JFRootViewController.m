//
//  JFRootViewController.m
//  JFCalendarPicker
//
//  Created by 保修一站通 on 15/10/1.
//  Copyright (c) 2015年 JF. All rights reserved.
//

#import "JFRootViewController.h"
#import "JFCalendarPickerView.h"
#import "JFDetailViewController.h"
#define CalendarPickerViewW self.view.frame.size.width

@interface JFRootViewController ()

@end

@implementation JFRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
    [self initCalendarPickView];
   
}

-(void)initView{
    self.title = @"JF日历";
    self.view.backgroundColor = [UIColor whiteColor];

}
-(void)initCalendarPickView{
    JFCalendarPickerView *calendarPicker = [JFCalendarPickerView showOnView:self.view];
    calendarPicker.today = [NSDate date];
    calendarPicker.date = calendarPicker.today;
    
    //frame用外界控制日历的大小 可以更灵活的调用
    calendarPicker.frame = CGRectMake(0, 65, CalendarPickerViewW, 360);
    
    //提供一个block给外界调用 
    calendarPicker.calendarBlock = ^(NSInteger day, NSInteger month, NSInteger year){
        JFDetailViewController *detailVC = [[JFDetailViewController alloc]init];
        [self presentViewController:detailVC animated:YES completion:^{
            detailVC.deteilLabel.text = [NSString stringWithFormat:@"\n日：%ld\n月：%ld\n年：%ld",(long)day, (long)month, (long)year];
            
        }];
    };

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
