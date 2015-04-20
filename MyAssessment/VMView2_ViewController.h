//
//  VMView2_ViewController.h
//  MyAssessment
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VMView1_ViewController.h"
#import "VMView3_ViewController.h"
@interface VMView2_ViewController : UIViewController

@property (nonatomic, strong) UIColor *backgroundColor;
@property (nonatomic) NSInteger idSender;

@property (weak, nonatomic) IBOutlet UIButton *butGo1;
@property (weak, nonatomic) IBOutlet UIButton *butGo2;
@property (weak, nonatomic) IBOutlet UIButton *butGo3;
@property (weak, nonatomic) IBOutlet UIButton *butGoLast;


@property (weak, nonatomic) IBOutlet UILabel *lbOne;
@property (weak, nonatomic) IBOutlet UILabel *lbTwo;
@property (weak, nonatomic) IBOutlet UILabel *lbThree;
- (IBAction)clickButGo1:(id)sender;
- (IBAction)clickButGo2:(id)sender;
- (IBAction)clickButGo3:(id)sender;
- (IBAction)clickButGoLast:(id)sender;

@end
