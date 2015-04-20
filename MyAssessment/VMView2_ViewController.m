//
//  VMView2_ViewController.m
//  MyAssessment
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMView2_ViewController.h"

@interface VMView2_ViewController ()
@property (nonatomic) NSString *strSendView1;
@end

@implementation VMView2_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
    [self initBackButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initBackButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 55, 35);
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"back" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *customBarItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = customBarItem;
}

-(void)initView
{
    
    [self.butGo1 setTag:1];
    [self.butGo2 setTag:2];
    [self.butGo3 setTag:3];
    [self.butGoLast setTag:4];
    [self.view setBackgroundColor:self.backgroundColor];
    [self.navigationItem setTitle:[NSString stringWithFormat:@"Button pressed is %li",(long)self.idSender]];
}

-(void)backToView1:(NSInteger)tag
{
    switch (tag) {
        case 1:
            self.strSendView1 = @"ONE";
            break;
        case 2:
            self.strSendView1 = @"TWO";
            break;
        case 3:
            self.strSendView1 = @"THREE";
            break;
        default:
            break;
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:@"DataFromView2" object:self.strSendView1];
    [self.navigationController popViewControllerAnimated:YES];
    
}


#pragma mark - User action
-(void)backButtonClicked:(UIButton*)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"DataFromView2" object:@"None"];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)clickButGo1:(UIButton*)sender
{
    [self backToView1:sender.tag];
}

-(void)clickButGo2:(UIButton*)sender
{
    [self backToView1:sender.tag];
}

-(void)clickButGo3:(UIButton*)sender
{
    [self backToView1:sender.tag];
}

-(void)clickButGoLast:(UIButton*)sender
{
    VMView3_ViewController *view3 = [self.storyboard instantiateViewControllerWithIdentifier:@"view3"];
    [self.navigationController pushViewController:view3 animated:YES];
}
@end
