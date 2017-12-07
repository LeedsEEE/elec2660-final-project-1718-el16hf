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
    self.dataModel = [[DataModel alloc] init];
    // Do any additional setup after loading the view.
    self.RouteNumberLabel.text = self.route.routenumber;
    self.RouteDifficultyImage.image = [UIImage imageNamed:self.route.routedifficulty];
    self.RouteLocationImage.image = [UIImage imageNamed:self.route.routelocation ];
    //self.RouteSwitchSetStatus.on = self.route.routeCompletedStatus;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:true forKey:@"complete"];
    [defaults synchronize];
    NSLog(@"complete = %d",[defaults boolForKey:@"complete"]);
    NSString *key = [NSString stringWithFormat:@"%@", self.route.routenumber];
    BOOL switchon = [defaults integerForKey:key];
    
    if (switchon == 1) {
        self.RouteStatusLabel.text = @"Completed";
    } else {
        self.RouteStatusLabel.text = @"Incomplete";
    }
    
    
    if (switchon == 1) {
        self.RouteSwitchSetStatus.on = true;
    }
    else {
        self.RouteSwitchSetStatus.on = false;
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

- (IBAction)OutputUserComments:(id)sender {
}

- (IBAction)InputUserComments:(UITextField *)sender {
}

- (IBAction)RouteStatusSwitch:(UISwitch *)sender {

    if (sender.on) {
        self.RouteStatusLabel.text = @"Completed";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setBool:true forKey:[NSString stringWithFormat:@"%@",self.route.routenumber]];
        [defaults synchronize];
        self.val = 1;
        }
    else {
        self.RouteStatusLabel.text = @"Incomplete";
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setBool:false forKey:[NSString stringWithFormat:@"%@",self.route.routenumber]];
        [defaults synchronize];
        self.val = 0;

    }
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *key = [NSString stringWithFormat:@"%@", self.route.routenumber];
    [defaults setInteger:self.val forKey:key];
    [defaults synchronize];
}
@end
