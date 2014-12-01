//
//  MMARadioButton.m
//  WakeMeAt
//
//  Created by Marcos Martinez on 17/10/2014.
//
//

#import "MMARadioButton.h"

@protocol MMARadioButtonDelegate <NSObject>

- (void) didClickButton: (id) radioButton;

@end

@interface MMARadioButton ()
    @property id<MMARadioButtonDelegate> delegate;
@end

@implementation MMARadioButton

- (instancetype) init
{
    self = [super init];
    if (self) {
        self.textLabel = [[UILabel alloc] init];
        self.selectedView = [[UIView alloc] init];
        self.unselectedView = [[UIView alloc] init];
        [self defaultSetup];
    }
    return self;
}

- (instancetype) initMMARadioButtonWithFrame: (CGRect) rect
{
    self = [super initWithFrame:rect];
    if (self) {
        self.textLabel = [[UILabel alloc] init];
        self.textLabel.userInteractionEnabled = NO;
        self.selectedView = [[UIView alloc] init];
        self.selectedView.userInteractionEnabled = NO;
        self.unselectedView = [[UIView alloc] init];
        self.unselectedView.userInteractionEnabled = NO;
        [self defaultSetup];
    }
    return self;
}

- (void) defaultSetup
{
    self.textLabel.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)/3);
    self.textLabel.text = @"Example";
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    [self.textLabel setAdjustsFontSizeToFitWidth:YES];
    [self addSubview:self.textLabel];
    
    self.selectedView.frame = CGRectMake(MIN(CGRectGetWidth(self.frame), (CGRectGetHeight(self.frame)-CGRectGetHeight(self.textLabel.frame)))*0.5f, MIN(CGRectGetWidth(self.frame), (CGRectGetHeight(self.frame)-CGRectGetHeight(self.textLabel.frame)))*0.75f, MIN(CGRectGetWidth(self.frame), (CGRectGetHeight(self.frame)-CGRectGetHeight(self.textLabel.frame)))/2, MIN(CGRectGetWidth(self.frame), (CGRectGetHeight(self.frame)-CGRectGetHeight(self.textLabel.frame)))/2);
    self.selectedView.layer.cornerRadius = CGRectGetWidth(self.selectedView.frame) / 2;
    self.selectedView.backgroundColor = [UIColor grayColor];
    self.selectedView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.selectedView.layer.borderWidth = 1;
    
    self.unselectedView.frame = self.selectedView.frame;
    self.unselectedView.layer.cornerRadius = CGRectGetWidth(self.unselectedView.frame) / 2;
    self.unselectedView.backgroundColor = [UIColor whiteColor];
    self.unselectedView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.unselectedView.layer.borderWidth = 1;
}

- (void) layoutSubviews
{
    if (self.check) {
        [self.unselectedView removeFromSuperview];
        [self addSubview:self.selectedView];
    }
    else
    {
        [self.selectedView removeFromSuperview];
        [self addSubview:self.unselectedView];
    }
}

@end
