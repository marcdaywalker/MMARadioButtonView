//
//  MMARadioButton.h
//  WakeMeAt
//
//  Created by Marcos Martinez on 17/10/2014.
//
//

#import <UIKit/UIKit.h>

@interface MMARadioButton : UIButton

@property (nonatomic,strong) UILabel *textLabel;
@property (nonatomic,strong) UIView *selectedView;
@property (nonatomic,strong) UIView *unselectedView;
@property (nonatomic, getter=isChecked) BOOL check;

- (instancetype) initMMARadioButtonWithFrame: (CGRect) rect;

@end
