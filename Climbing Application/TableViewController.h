//
//  TableViewController.h
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "RouteViewController.h"
#import "Route.h"

@interface TableViewController : UITableViewController

@property (strong, nonatomic) DataModel *data;

@property (strong, nonatomic) Route *route;
@end
