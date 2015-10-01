# JFCalendarPicker
一个简单的日历表集成
```
 JFCalendarPickerView *calendarPicker = [JFCalendarPickerView showOnView:self.view];
    calendarPicker.today = [NSDate date];
    calendarPicker.date = calendarPicker.today;
    calendarPicker.frame = CGRectMake(0, 65, CalendarPickerViewW, 360);
    calendarPicker.calendarBlock = ^(NSInteger day, NSInteger month, NSInteger year){
        JFDetailViewController *detailVC = [[JFDetailViewController alloc]init];
        [self presentViewController:detailVC animated:YES completion:^{
            detailVC.deteilLabel.text = [NSString stringWithFormat:@"\n日：%ld\n月：%ld\n年：%ld",(long)day, (long)month, (long)year];
            
        }];
    };

```
![](file://localhost/Users/baoxiuyizhantong/Desktop/%E6%97%A5%E5%8E%86%E8%A1%A8.gif)

