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
        
        self.greenRoutes = [NSMutableArray array];          //accesses the greenRoutes array
        Route *greenRoute1 = [[Route alloc] init];          //creates an entity in the array named greenRouteX
        greenRoute1.routenumber = @"green route 1 - VB";    //stores name for specific route
        greenRoute1.routedifficulty = @"GreenCircle.png";   //stores the relevant difficulty image
        greenRoute1.routelocation = @"Test image.jpg";      //stores image for specific route
        greenRoute1.routeCompletedStatus = complete;        //stores the completed status for the specific route
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute2 = [[Route alloc] init];
        greenRoute2.routenumber = @"green route 2 - VB";
        greenRoute2.routedifficulty = @"GreenCircle.png";
        greenRoute2.routelocation = @"Test image.jpg";
        greenRoute2.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute3 = [[Route alloc] init];
        greenRoute3.routenumber = @"green route 3 - V0";
        greenRoute3.routedifficulty = @"YellowCircle.png";
        greenRoute3.routelocation = @"Test image.jpg";
        greenRoute3.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute4 = [[Route alloc] init];
        greenRoute4.routenumber = @"green route 4 - V0";
        greenRoute4.routedifficulty = @"YellowCircle.png";
        greenRoute4.routelocation = @"Test image.jpg";
        greenRoute4.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute5 = [[Route alloc] init];
        greenRoute5.routenumber = @"green route 5 - V1";
        greenRoute5.routedifficulty = @"RedCircle.png";
        greenRoute5.routelocation = @"Test image.jpg";
        greenRoute5.routeCompletedStatus = complete;

        [self.greenRoutes addObject:greenRoute1];   //index 0
        [self.greenRoutes addObject:greenRoute2];   //index 1
        [self.greenRoutes addObject:greenRoute3];   //index 2
        [self.greenRoutes addObject:greenRoute4];   //index 3
        [self.greenRoutes addObject:greenRoute5];   //index 4
        
        //^Green routes Array
        
        
        self.orangeRoutes = [NSMutableArray array];         //accesses the orangeRoutes array
        Route *orangeRoute6 = [[Route alloc] init];         //creates an entity in the array named orangeRouteX
        orangeRoute6.routenumber = @"orange route 6 - V0";
        orangeRoute6.routedifficulty = @"GreenCircle.png";
        orangeRoute6.routelocation = @"Test image.jpg";
        orangeRoute6.routeCompletedStatus = complete;
        
        self.orangeRoutes = [NSMutableArray array];
        Route *orangeRoute7 = [[Route alloc] init];
        orangeRoute7.routenumber = @"orange route 7 - V1";
        orangeRoute7.routedifficulty = @"YellowCircle.png";
        orangeRoute7.routelocation = @"Test image.jpg";
        orangeRoute7.routeCompletedStatus = complete;
        
        self.orangeRoutes = [NSMutableArray array];
        Route *orangeRoute8 = [[Route alloc] init];
        orangeRoute8.routenumber = @"orange route 8 - V2";
        orangeRoute8.routedifficulty = @"RedCircle.png";
        orangeRoute8.routelocation = @"Test image.jpg";
        orangeRoute8.routeCompletedStatus = complete;
        
        self.orangeRoutes = [NSMutableArray array];
        Route *orangeRoute9 = [[Route alloc] init];
        orangeRoute9.routenumber = @"orange route 9 - V2";
        orangeRoute9.routedifficulty = @"RedCircle.png";
        orangeRoute9.routelocation = @"Test image.jpg";
        orangeRoute9.routeCompletedStatus = complete;
        
        [self.orangeRoutes addObject:orangeRoute6]; //index 0
        [self.orangeRoutes addObject:orangeRoute7]; //index 1
        [self.orangeRoutes addObject:orangeRoute8]; //index 2
        [self.orangeRoutes addObject:orangeRoute9]; //index 3
        
        //^Orange routes Array
        
        
        self.greyRoutes = [NSMutableArray array];             //accesses the greyRoutes array
        Route *greyRoute10 = [[Route alloc] init];            //creates an entity in the array named greyRouteX
        greyRoute10.routenumber = @"grey route 10 - V1";
        greyRoute10.routedifficulty = @"GreenCircle.png";
        greyRoute10.routelocation = @"Test image.jpg";
        greyRoute10.routeCompletedStatus = complete;
        
        self.greyRoutes = [NSMutableArray array];
        Route *greyRoute11 = [[Route alloc] init];
        greyRoute11.routenumber = @"grey route 11 - V2";
        greyRoute11.routedifficulty = @"YellowCircle.png";
        greyRoute11.routelocation = @"Test image.jpg";
        greyRoute11.routeCompletedStatus = complete;
        
        self.greyRoutes = [NSMutableArray array];
        Route *greyRoute12 = [[Route alloc] init];
        greyRoute12.routenumber = @"grey route 12 - V2";
        greyRoute12.routedifficulty = @"YellowCircle.png";
        greyRoute12.routelocation = @"Test image.jpg";
        greyRoute12.routeCompletedStatus = complete;
        
        self.greyRoutes = [NSMutableArray array];
        Route *greyRoute13 = [[Route alloc] init];
        greyRoute13.routenumber = @"grey route 13 - V3";
        greyRoute13.routedifficulty = @"RedCircle.png";
        greyRoute13.routelocation = @"Test image.jpg";
        greyRoute13.routeCompletedStatus = complete;

        [self.greyRoutes addObject:greyRoute10]; //index 0
        [self.greyRoutes addObject:greyRoute11]; //index 1
        [self.greyRoutes addObject:greyRoute12]; //index 2
        [self.greyRoutes addObject:greyRoute13]; //index 3
        
        //^grey routes Array
        
        
        self.yellowRoutes = [NSMutableArray array];             //accesses the yellow Routes array
        Route *yellowRoute14 = [[Route alloc] init];            //creates an entity in the array named yellowRouteX
        yellowRoute14.routenumber = @"yellow route 14 - V2";
        yellowRoute14.routedifficulty = @"GreenCircle.png";
        yellowRoute14.routelocation = @"Test image.jpg";
        yellowRoute14.routeCompletedStatus = complete;
        
        self.yellowRoutes = [NSMutableArray array];
        Route *yellowRoute15 = [[Route alloc] init];
        yellowRoute15.routenumber = @"yellow route 15 - V3";
        yellowRoute15.routedifficulty = @"YellowCircle.png";
        yellowRoute15.routelocation = @"Test image.jpg";
        yellowRoute15.routeCompletedStatus = complete;
        
        self.yellowRoutes = [NSMutableArray array];
        Route *yellowRoute16 = [[Route alloc] init];
        yellowRoute16.routenumber = @"yellow route 16 - V4";
        yellowRoute16.routedifficulty = @"RedCircle.png";
        yellowRoute16.routelocation = @"Test image.jpg";
        yellowRoute16.routeCompletedStatus = complete;
        
        self.yellowRoutes = [NSMutableArray array];
        Route *yellowRoute17 = [[Route alloc] init];
        yellowRoute17.routenumber = @"yellow route 17 - V4";
        yellowRoute17.routedifficulty = @"RedCircle.png";
        yellowRoute17.routelocation = @"Test image.jpg";
        yellowRoute17.routeCompletedStatus = complete;
        
        [self.yellowRoutes addObject:yellowRoute14]; //index 0
        [self.yellowRoutes addObject:yellowRoute15]; //index 1
        [self.yellowRoutes addObject:yellowRoute16]; //index 2
        [self.yellowRoutes addObject:yellowRoute17]; //index 3
        
        //^yellow routes array
        
    }
    return self;
}

@end
