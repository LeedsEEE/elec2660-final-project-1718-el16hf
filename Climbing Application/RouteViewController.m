//
//  RouteViewController.m
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "RouteViewController.h"

@interface RouteViewController ()

@end

@implementation RouteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.RouteNumberLabel.text = self.route.routenumber;
    self.RouteLocationImage.image = [UIImage imageNamed:self.route.routelocation ];
    self.RouteSwitchSetStatus.on = self.route.routeCompletedStatus;
    if (_RouteSwitchSetStatus.on) {
        self.RouteStatusLabel.text = @"Completed";
    } else {
        self.RouteStatusLabel.text = @"Incomplete";
    }
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

- (IBAction)RouteStatusSwitch:(UISwitch *)sender {
    if (sender.on) {
        self.RouteStatusLabel.text = @"Completed";
    } else {
        self.RouteStatusLabel.text = @"Incomplete";
    }
}
@end
