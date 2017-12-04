//
//  DataModel.m
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute1 = [[Route alloc] init];
        greenRoute1.routenumber = @"Route 1 - VB";
        greenRoute1.routelocation = @"Test image.jpg";
        greenRoute1.routeCompletedStatus = false;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute2 = [[Route alloc] init];
        greenRoute2.routenumber = @"Route 2 - VB";
        greenRoute2.routelocation = @"Test image.jpg";
        greenRoute2.routeCompletedStatus = true;
        
        [self.greenRoutes addObject:greenRoute1]; //index 0
        [self.greenRoutes addObject:greenRoute2]; //index 1
    }
    return self;
}

@end
