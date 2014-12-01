//
//  ViewController.m
//  MMARadioButtonView
//
//  Created by Marcos Martinez on 27/11/2014.
//  Copyright (c) 2014 Marcos Martinez. All rights reserved.
//

#import "ViewController.h"
#import "MMARadioButton.h"

#define kPadding 40

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MMARadioButtonView *radioButtonView = [[MMARadioButtonView alloc] radioButtonWithFrame:CGRectMake(kPadding, kPadding, CGRectGetWidth(self.view.frame)-kPadding*2,50)];
    radioButtonView.delegate = self;
    [radioButtonView.titleLabel setText:@"Distance"];
    radioButtonView.titleLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    
    MMARadioButton *radioButton = [[MMARadioButton alloc] initMMARadioButtonWithFrame:CGRectMake(120, 0, CGRectGetHeight(radioButtonView.frame), CGRectGetHeight(radioButtonView.frame))];
    [radioButton.textLabel setText:@"Km"];
    radioButton.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
//    radioButton.textLabel.textAlignment = NSTextAlignmentLeft;
//    radioButton.textLabel.frame = CGRectMake(0, 0, CGRectGetWidth(radioButton.frame), CGRectGetHeight(radioButton.frame));
    radioButton.check = NO;
    [radioButtonView addRadioButton:radioButton];
    
    radioButton = [[MMARadioButton alloc] initMMARadioButtonWithFrame:CGRectMake(200, 0, CGRectGetHeight(radioButtonView.frame), CGRectGetHeight(radioButtonView.frame))];
    [radioButton.textLabel setText:@"Mi"];
    radioButton.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
//    radioButton.textLabel.textAlignment = NSTextAlignmentLeft;
//    radioButton.textLabel.frame = CGRectMake(0, 0, CGRectGetWidth(radioButton.frame), CGRectGetHeight(radioButton.frame));
    radioButton.check = YES;
    [radioButtonView addRadioButton:radioButton];
    [self.view addSubview:radioButtonView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
