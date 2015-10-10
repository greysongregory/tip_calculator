//
//  TipViewController.h
//  tip-calculator
//
//  Created by Greyson Gregory on 9/30/15.
//  Copyright (c) 2015 Greyson Gregory. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISlider *splitControl;
- (IBAction)sliderChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UILabel *splitLabel;
@property (weak, nonatomic) IBOutlet UILabel *splitTitleLabel;

@end
