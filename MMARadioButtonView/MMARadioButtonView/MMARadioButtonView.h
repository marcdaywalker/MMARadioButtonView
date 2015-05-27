//
//  MMARadioButton.h
//  WakeMeAt
//
//  Created by Marcos Martinez on 16/10/2014.
//
//

#import <Foundation/Foundation.h>
#import "MMARadioButton.h"

@protocol MMARadioButtonViewDelegate <NSObject>
@optional
- (void) selectedRadioButtonView: (id) radioButtonView usingRadioButton: (id) radioButton;

@end

@interface MMARadioButtonView : UIView

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) NSMutableArray *radioButtons;
@property id<MMARadioButtonViewDelegate> delegate;

- (instancetype) radioButtonWithFrame: (CGRect) frame;

- (void) addRadioButton:(MMARadioButton *) radioButton;

@end
