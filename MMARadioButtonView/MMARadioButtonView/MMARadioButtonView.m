//
//  MMARadioButton.m
//  WakeMeAt
//
//  Created by Marcos Martinez on 16/10/2014.
//
//

#import "MMARadioButtonView.h"

#define kLeftPadding 00

@interface MMARadioButtonView ()

@end

@implementation MMARadioButtonView

- (instancetype) radioButtonWithFrame: (CGRect) frame
{
    if ([super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        self.radioButtons = [[NSMutableArray alloc] init];
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.adjustsFontSizeToFitWidth = YES;
        [self addSubview:self.titleLabel];
    }
    return self;
    
}

- (void) layoutSubviews {
    [self.titleLabel sizeToFit];
    CGRect frm = self.titleLabel.frame;
    frm.origin.x = kLeftPadding;
    frm.size.height = CGRectGetHeight(self.frame);
    self.titleLabel.frame = frm;
    
    [self.radioButtons enumerateObjectsUsingBlock:^(MMARadioButton * radioButton, NSUInteger idx, BOOL *stop) {
        [self addSubview:radioButton];
    }];
}

- (void) addRadioButton:(MMARadioButton *) radioButton
{
    [radioButton addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchDown];
    [self.radioButtons addObject:radioButton];
}

- (void) didClickButton:(MMARadioButton *) radioButton
{
    __block NSInteger selectedIndex;
    if (!radioButton.isChecked) {
        [self.radioButtons enumerateObjectsUsingBlock:^(MMARadioButton * radiobutton, NSUInteger idx, BOOL *stop) {
            if (radioButton == radiobutton) {
                radiobutton.check = YES;
                selectedIndex = idx;
            }
            else
            {
                radiobutton.check = NO;
            }
            [radiobutton setNeedsLayout];
            if (idx == self.radioButtons.count-1) {
                if ([self.delegate respondsToSelector:@selector(selectedButtonChanged:toIndex:)]) {
                    [self.delegate selectedButtonChanged:radioButton toIndex:selectedIndex];
                }
            }
        }];
    }
}

@end
