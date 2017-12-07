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
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        BOOL complete = [defaults integerForKey:@"Complete"];
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute1 = [[Route alloc] init];
        greenRoute1.routenumber = @"Route 1 - VB";
        greenRoute1.routelocation = @"Test image.jpg";
        greenRoute1.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute2 = [[Route alloc] init];
        greenRoute2.routenumber = @"Route 2 - VB";
        greenRoute2.routelocation = @"Test image.jpg";
        greenRoute2.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute3 = [[Route alloc] init];
        greenRoute3.routenumber = @"Route 3 - VB";
        greenRoute3.routelocation = @"Test image.jpg";
        greenRoute3.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute4 = [[Route alloc] init];
        greenRoute4.routenumber = @"Route 4 - VB";
        greenRoute4.routelocation = @"Test image.jpg";
        greenRoute4.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute5 = [[Route alloc] init];
        greenRoute5.routenumber = @"Route 5 - VB";
        greenRoute5.routelocation = @"Test image.jpg";
        greenRoute5.routeCompletedStatus = complete;

        [self.greenRoutes addObject:greenRoute1]; //index 0
        [self.greenRoutes addObject:greenRoute2]; //index 1
        [self.greenRoutes addObject:greenRoute3]; //index 2
        [self.greenRoutes addObject:greenRoute4]; //index 3
        [self.greenRoutes addObject:greenRoute5]; //index 4
    }
    return self;
}

@end
