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
    
    MMARadioButtonView *radioButtonView = [[MMARadioButtonView alloc] radioButtonWithFrame:CGRectMake(0, kPadding, CGRectGetWidth(self.view.frame),50)];
    radioButtonView.delegate = self;
    [radioButtonView.titleLabel setText:@"Two options"];
    radioButtonView.titleLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [self.view addSubview:radioButtonView];
    
    MMARadioButton *radioButton = [[MMARadioButton alloc] initMMARadioButtonWithFrame:CGRectMake(130, 0, CGRectGetHeight(radioButtonView.frame), CGRectGetHeight(radioButtonView.frame))];
    [radioButton.textLabel setText:@"Yes"];
    radioButton.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    radioButton.check = NO;
    [radioButtonView addRadioButton:radioButton];
    
    radioButton = [[MMARadioButton alloc] initMMARadioButtonWithFrame:CGRectMake(210, 0, CGRectGetHeight(radioButtonView.frame), CGRectGetHeight(radioButtonView.frame))];
    [radioButton.textLabel setText:@"No"];
    radioButton.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    radioButton.check = YES;
    [radioButtonView addRadioButton:radioButton];
    
    
    radioButtonView = [[MMARadioButtonView alloc] radioButtonWithFrame:CGRectMake(0, CGRectGetMaxY(radioButtonView.frame) + kPadding, CGRectGetWidth(self.view.frame),50)];
    radioButtonView.delegate = self;
    [radioButtonView.titleLabel setText:@"Three options"];
    radioButtonView.titleLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [self.view addSubview:radioButtonView];
    
    radioButton = [[MMARadioButton alloc] initMMARadioButtonWithFrame:CGRectMake(130, 0, CGRectGetHeight(radioButtonView.frame), CGRectGetHeight(radioButtonView.frame))];
    [radioButton.textLabel setText:@"A"];
    radioButton.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    radioButton.check = YES;
    [radioButtonView addRadioButton:radioButton];
    
    radioButton = [[MMARadioButton alloc] initMMARadioButtonWithFrame:CGRectMake(210, 0, CGRectGetHeight(radioButtonView.frame), CGRectGetHeight(radioButtonView.frame))];
    [radioButton.textLabel setText:@"B"];
    radioButton.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    radioButton.check = NO;
    [radioButtonView addRadioButton:radioButton];
    
    radioButton = [[MMARadioButton alloc] initMMARadioButtonWithFrame:CGRectMake(290, 0, CGRectGetHeight(radioButtonView.frame), CGRectGetHeight(radioButtonView.frame))];
    [radioButton.textLabel setText:@"C"];
    radioButton.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    radioButton.check = NO;
    [radioButtonView addRadioButton:radioButton];
    
}

#pragma mark - MMARadioButtonViewDelegate
- (void)selectedRadioButtonView:(MMARadioButtonView *)radioButtonView usingRadioButton:(MMARadioButton *)radioButton
{
    NSLog(@"RadioButtonView title: %@ radioButton: %@",radioButtonView.titleLabel.text, radioButton.textLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
