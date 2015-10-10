//
//  TipViewController.m
//  tip-calculator
//
//  Created by Greyson Gregory on 9/30/15.
//  Copyright (c) 2015 Greyson Gregory. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()

//@property (weak, nonatomic) IBOutlet UITextField *billTextField;
//@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
//@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
//@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
//@property (weak, nonatomic) IBOutlet UILabel *splitLabel;
//@property (weak, nonatomic) IBOutlet UILabel *splitTitleLabel;

- (IBAction)onTap:(id)sender;
- (void)updateValues;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (self) {
        self.title = @"Tip Calculator";
    }
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int selectedTip = [defaults integerForKey:@"selected_tip"];
    self.tipControl.selectedSegmentIndex = selectedTip;
    [self updateValues];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
//    UIColor *tipOriginalColor = self.tipLabel.backgroundColor;
//    UIColor *totalOriginalColor = self.totalLabel.backgroundColor;
//    
//    [UIView animateWithDuration:0.2 animations:^{
//        self.tipLabel.backgroundColor = [UIColor redColor];
//        self.totalLabel.backgroundColor = [UIColor redColor];
//    } completion:^(BOOL finished) {
//        self.tipLabel.backgroundColor = tipOriginalColor;
//        self.totalLabel.backgroundColor = totalOriginalColor;
//
//    }];
}

- (void)updateValues {
    float billAmount = [self.billTextField.text floatValue];
    
    NSArray *tipValues = @[@(0.1), @(0.15), @(0.2)];
    float tipAmount = billAmount * [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    float totalAmount = tipAmount + billAmount;
    self.tipLabel.text = [NSString stringWithFormat:@"$%0.2f", tipAmount];
    NSString *originalTotal = self.totalLabel.text;
    self.totalLabel.text = [NSString stringWithFormat:@"$%0.2f", totalAmount];
    if (![originalTotal isEqualToString:self.totalLabel.text]) {
        UIColor *tipOriginalColor = self.tipLabel.backgroundColor;
        UIColor *totalOriginalColor = self.totalLabel.backgroundColor;
        
        [UIView animateWithDuration:.4 animations:^{
            self.tipLabel.backgroundColor = [UIColor redColor];
            self.totalLabel.backgroundColor = [UIColor redColor];
        } completion:^(BOOL finished) {
            self.tipLabel.backgroundColor = tipOriginalColor;
            self.totalLabel.backgroundColor = totalOriginalColor;
        }];
    }
    
    self.splitTitleLabel.text = [NSString stringWithFormat:@"%.0f Way Split", self.splitControl.value];
    float splitAmount = totalAmount / lroundf(self.splitControl.value);
    self.splitLabel.text = [NSString stringWithFormat:@"%0.2f", splitAmount];

}

- (IBAction)sliderChanged:(id)sender {
    int sliderValue;
    sliderValue = lroundf(self.splitControl.value);
    [self.splitControl setValue:sliderValue animated:(YES)];
    [self updateValues];
}

- (void)viewWillAppear:(BOOL)animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int selectedTip = [defaults integerForKey:@"selected_tip"];
    self.tipControl.selectedSegmentIndex = selectedTip;
    [self updateValues];
    [self.billTextField becomeFirstResponder];
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"view did appear");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"view will disappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"view did disappear");
}

@end
