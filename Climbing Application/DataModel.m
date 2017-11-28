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
        
        [self.greenRoutes addObject:greenRoute1]; //index 0
    }
    return self;
}

@end
