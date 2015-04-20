//
//  VMView3_ViewController.m
//  MyAssessment
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMView3_ViewController.h"
@interface VMView3_ViewController ()
@property (nonatomic) NSMutableArray *arrTableData;
@end

@implementation VMView3_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getListDateFromCurrentDateWithQuantity:12];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - get table data
-(void)getListDateFromCurrentDateWithQuantity:(NSInteger)quantity
{
    self.arrTableData = [NSMutableArray arrayWithCapacity:quantity];
    NSDate *currentDate = [NSDate date];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *todayComponents = [calendar components:(NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear) fromDate:currentDate];
    NSInteger theDay = [todayComponents day];
    NSInteger theMonth = [todayComponents month];
    NSInteger theYear = [todayComponents year];

    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:theDay];
    [components setMonth:theMonth];
    [components setYear:theYear];
    NSDate *thisDate = [calendar dateFromComponents:components];
    
    for (NSInteger i = 0; i<quantity; i++) {
        NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
        [offsetComponents setDay:i];
        NSDate *nextDate = [calendar dateByAddingComponents:offsetComponents toDate:thisDate options:0];
        
        NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"dd MMM yyyy";
//        NSLog(@"%@",[dateFormatter stringFromDate:nextDate]);
        [self.arrTableData addObject:[dateFormatter stringFromDate:nextDate]];
    }
}


#pragma mark - table view delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrTableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.arrTableData objectAtIndex:indexPath.row];
    return cell;
}

@end
