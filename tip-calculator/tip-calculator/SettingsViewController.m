//
//  SettingsViewController.m
//  tip-calculator
//
//  Created by Greyson Gregory on 9/30/15.
//  Copyright (c) 2015 Greyson Gregory. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSettings;

- (IBAction)onTipSettingsTap:(id)sender;
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int selectedTip = [defaults integerForKey:@"selected_tip"];
    self.tipSettings.selectedSegmentIndex = selectedTip;

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

- (IBAction)onTipSettingsTap:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    long selectedIndex = self.tipSettings.selectedSegmentIndex;
    [defaults setInteger:selectedIndex forKey:@"selected_tip"];
    [defaults synchronize];
}
@end
