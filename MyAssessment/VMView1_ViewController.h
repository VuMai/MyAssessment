//
//  VMView1_ViewController.h
//  MyAssessment
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VMView2_ViewController.h"
@interface VMView1_ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *butGo1;
@property (weak, nonatomic) IBOutlet UIButton *butGo2;
@property (weak, nonatomic) IBOutlet UIButton *butGo3;

@property (weak, nonatomic) IBOutlet UILabel *lbRed;
@property (weak, nonatomic) IBOutlet UILabel *lbBlue;
@property (weak, nonatomic) IBOutlet UILabel *lbGreen;
@property (weak, nonatomic) IBOutlet UILabel *lbNone;
- (IBAction)clickButGo1:(id)sender;
- (IBAction)clickButGo2:(id)sender;
- (IBAction)clickButGo3:(id)sender;
@end
