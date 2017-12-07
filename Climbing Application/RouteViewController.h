//
//  RouteViewController.h
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Route.h"
#import "DataModel.h"

@interface RouteViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *RouteNumberLabel;
@property (weak, nonatomic) IBOutlet UIImageView *RouteLocationImage;
@property (weak, nonatomic) IBOutlet UIImageView *RouteDifficultyImage;
@property (weak, nonatomic) IBOutlet UISwitch *RouteSwitchSetStatus;
@property (weak, nonatomic) IBOutlet UILabel *RouteStatusLabel;

- (IBAction)RouteStatusSwitch:(UISwitch *)sender;
@property (nonatomic, strong) DataModel *dataModel;
@property (strong, nonatomic) Route *route;
@property NSInteger val;

//@property (strong, nonatomic)NSString *key;

@end
