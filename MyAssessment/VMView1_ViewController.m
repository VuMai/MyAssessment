//
//  VMView1_ViewController.m
//  MyAssessment
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMView1_ViewController.h"

@interface VMView1_ViewController ()

@end

@implementation VMView1_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButton];
    [self receiveData];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initButton
{
    [self.butGo1 setTag:1];
    [self.butGo2 setTag:2];
    [self.butGo3 setTag:3];
}

-(void)receiveData
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveDataNotification:) name:@"DataFromView2" object:nil];
}

#pragma mark - Function Progress
-(void)clickChangeViewWithTag:(NSInteger)tag
{
    VMView2_ViewController *view2 = [self.storyboard instantiateViewControllerWithIdentifier:@"view2"];
    switch (tag) {
        case 1:
            view2.backgroundColor = self.lbBlue.backgroundColor;
            
            break;
        case 2:
            view2.backgroundColor = self.lbRed.backgroundColor;
            
            break;
        case 3:
            view2.backgroundColor = self.lbGreen.backgroundColor;
            
            break;
        default:
            break;
    }
    [view2 setIdSender:tag];
    [self.navigationController pushViewController:view2 animated:YES];
    
}

-(void)receiveDataNotification:(NSNotification*)noti
{
    if ([noti.name isEqualToString:@"DataFromView2"]) {
        NSString *str = [noti object];
        if (![str isEqualToString:@"None"]) {
            [self.lbNone setText:[NSString stringWithFormat:@"button pressed is %@",str]];
        }
        else [self.lbNone setText:@"None"];
    }
}


#pragma mark - User action
- (IBAction)clickButGo1:(UIButton*)sender {
    [self clickChangeViewWithTag:sender.tag];
}

- (IBAction)clickButGo2:(UIButton*)sender {
    [self clickChangeViewWithTag:sender.tag];
}

- (IBAction)clickButGo3:(UIButton*)sender {
    [self clickChangeViewWithTag:sender.tag];
}

@end
