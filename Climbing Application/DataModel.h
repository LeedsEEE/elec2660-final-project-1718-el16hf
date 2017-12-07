//
//  DataModel.h
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Route.h"
#import "RouteColour.h"

@interface DataModel : NSObject

@property (strong, nonatomic) NSMutableArray *greenRoutes;
@property (strong, nonatomic) NSMutableArray *orangeRoutes;
@property (strong, nonatomic) NSMutableArray *greyRoutes;
@property (strong, nonatomic) NSMutableArray *yellowRoutes;
@property (strong, nonatomic) NSMutableArray *pinkRoutes;
@property (strong, nonatomic) NSMutableArray *blueRoutes;
@property (strong, nonatomic) NSMutableArray *blackRoutes;
@property (strong, nonatomic) NSMutableArray *purpleRoutes;
@property (strong, nonatomic) NSMutableArray *colourOfRoutes;

@end
