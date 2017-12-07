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
        NSString *comments =[defaults stringForKey:@"comments"];
    
        
        self.greenRoutes = [NSMutableArray array];              //accesses the greenRoutes array
        Route *greenRoute1 = [[Route alloc] init];              //creates an entity in the array named greenRouteX
        greenRoute1.routenumber = @"Green route 1 - VB";        //stores name for specific route
        greenRoute1.routedifficulty = @"GreenCircle.png";       //stores the relevant difficulty image
        greenRoute1.routelocation = @"Route 1 location.png";    //stores image for specific route
        greenRoute1.routeCompletedStatus = complete;            //stores the completed status for the specific route
        greenRoute1.routecomments = comments;                   //stores the comments for the specific route
    
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute2 = [[Route alloc] init];
        greenRoute2.routenumber = @"Green route 2 - VB";
        greenRoute2.routedifficulty = @"GreenCircle.png";
        greenRoute2.routelocation = @"Route 2 location.png";
        greenRoute2.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute3 = [[Route alloc] init];
        greenRoute3.routenumber = @"Green route 3 - V0";
        greenRoute3.routedifficulty = @"YellowCircle.png";
        greenRoute3.routelocation = @"Route 3 location.png";
        greenRoute3.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute4 = [[Route alloc] init];
        greenRoute4.routenumber = @"Green route 4 - V0";
        greenRoute4.routedifficulty = @"YellowCircle.png";
        greenRoute4.routelocation = @"Route 4 location.png";
        greenRoute4.routeCompletedStatus = complete;
        
        self.greenRoutes = [NSMutableArray array];
        Route *greenRoute5 = [[Route alloc] init];
        greenRoute5.routenumber = @"Green route 5 - V1";
        greenRoute5.routedifficulty = @"RedCircle.png";
        greenRoute5.routelocation = @"Route 5 location.png";
        greenRoute5.routeCompletedStatus = complete;

        [self.greenRoutes addObject:greenRoute1];   //index 0
        [self.greenRoutes addObject:greenRoute2];   //index 1
        [self.greenRoutes addObject:greenRoute3];   //index 2
        [self.greenRoutes addObject:greenRoute4];   //index 3
        [self.greenRoutes addObject:greenRoute5];   //index 4
        
        //^Green routes Array
        
        
        self.orangeRoutes = [NSMutableArray array];         //accesses the orangeRoutes array
        Route *orangeRoute6 = [[Route alloc] init];         //creates an entity in the array named orangeRouteX
        orangeRoute6.routenumber = @"Orange route 6 - V0";
        orangeRoute6.routedifficulty = @"GreenCircle.png";
        orangeRoute6.routelocation = @"Route 6 location.png";
        orangeRoute6.routeCompletedStatus = complete;
        
        self.orangeRoutes = [NSMutableArray array];
        Route *orangeRoute7 = [[Route alloc] init];
        orangeRoute7.routenumber = @"Orange route 7 - V1";
        orangeRoute7.routedifficulty = @"YellowCircle.png";
        orangeRoute7.routelocation = @"Route 7 location.png";
        orangeRoute7.routeCompletedStatus = complete;
        
        self.orangeRoutes = [NSMutableArray array];
        Route *orangeRoute8 = [[Route alloc] init];
        orangeRoute8.routenumber = @"Orange route 8 - V2";
        orangeRoute8.routedifficulty = @"RedCircle.png";
        orangeRoute8.routelocation = @"Route 8 location.png";
        orangeRoute8.routeCompletedStatus = complete;
        
        self.orangeRoutes = [NSMutableArray array];
        Route *orangeRoute9 = [[Route alloc] init];
        orangeRoute9.routenumber = @"Orange route 9 - V2";
        orangeRoute9.routedifficulty = @"RedCircle.png";
        orangeRoute9.routelocation = @"Route 9 location.png";
        orangeRoute9.routeCompletedStatus = complete;
        
        [self.orangeRoutes addObject:orangeRoute6]; //index 0
        [self.orangeRoutes addObject:orangeRoute7]; //index 1
        [self.orangeRoutes addObject:orangeRoute8]; //index 2
        [self.orangeRoutes addObject:orangeRoute9]; //index 3
        
        //^Orange routes Array
        
        
        self.greyRoutes = [NSMutableArray array];             //accesses the greyRoutes array
        Route *greyRoute10 = [[Route alloc] init];            //creates an entity in the array named greyRouteX
        greyRoute10.routenumber = @"Grey route 10 - V1";
        greyRoute10.routedifficulty = @"GreenCircle.png";
        greyRoute10.routelocation = @"Route 10 location.png";
        greyRoute10.routeCompletedStatus = complete;
        
        self.greyRoutes = [NSMutableArray array];
        Route *greyRoute11 = [[Route alloc] init];
        greyRoute11.routenumber = @"Grey route 11 - V2";
        greyRoute11.routedifficulty = @"YellowCircle.png";
        greyRoute11.routelocation = @"Route 11 location.png";
        greyRoute11.routeCompletedStatus = complete;
        
        self.greyRoutes = [NSMutableArray array];
        Route *greyRoute12 = [[Route alloc] init];
        greyRoute12.routenumber = @"Grey route 12 - V2";
        greyRoute12.routedifficulty = @"YellowCircle.png";
        greyRoute12.routelocation = @"Route 12 location.png";
        greyRoute12.routeCompletedStatus = complete;
        
        self.greyRoutes = [NSMutableArray array];
        Route *greyRoute13 = [[Route alloc] init];
        greyRoute13.routenumber = @"Grey route 13 - V3";
        greyRoute13.routedifficulty = @"RedCircle.png";
        greyRoute13.routelocation = @"Route 13 location.png";
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
        yellowRoute14.routelocation = @"Route 14 location.png";
        yellowRoute14.routeCompletedStatus = complete;
        
        self.yellowRoutes = [NSMutableArray array];
        Route *yellowRoute15 = [[Route alloc] init];
        yellowRoute15.routenumber = @"yellow route 15 - V3";
        yellowRoute15.routedifficulty = @"YellowCircle.png";
        yellowRoute15.routelocation = @"Route 15 location.png";
        yellowRoute15.routeCompletedStatus = complete;
        
        self.yellowRoutes = [NSMutableArray array];
        Route *yellowRoute16 = [[Route alloc] init];
        yellowRoute16.routenumber = @"yellow route 16 - V4";
        yellowRoute16.routedifficulty = @"RedCircle.png";
        yellowRoute16.routelocation = @"Route 16 location.png";
        yellowRoute16.routeCompletedStatus = complete;
        
        self.yellowRoutes = [NSMutableArray array];
        Route *yellowRoute17 = [[Route alloc] init];
        yellowRoute17.routenumber = @"yellow route 17 - V4";
        yellowRoute17.routedifficulty = @"RedCircle.png";
        yellowRoute17.routelocation = @"Route 17 location.png";
        yellowRoute17.routeCompletedStatus = complete;
        
        [self.yellowRoutes addObject:yellowRoute14]; //index 0
        [self.yellowRoutes addObject:yellowRoute15]; //index 1
        [self.yellowRoutes addObject:yellowRoute16]; //index 2
        [self.yellowRoutes addObject:yellowRoute17]; //index 3
        
        //^yellow routes array
        
        
        self.pinkRoutes = [NSMutableArray array];               //accesses the pink Routes array
        Route *pinkRoute18= [[Route alloc] init];               //creates an entity in the array named pinkRouteX
        pinkRoute18.routenumber = @"Pink route 18 - V3";
        pinkRoute18.routedifficulty = @"GreenCircle.png";
        pinkRoute18.routelocation = @"Route 18 location.png";
        pinkRoute18.routeCompletedStatus = complete;
        
        self.pinkRoutes = [NSMutableArray array];
        Route *pinkRoute19 = [[Route alloc] init];
        pinkRoute19.routenumber = @"Pink route 19 - V4";
        pinkRoute19.routedifficulty = @"YellowCircle.png";
        pinkRoute19.routelocation = @"Route 19 location.png";
        pinkRoute19.routeCompletedStatus = complete;
        
        self.pinkRoutes = [NSMutableArray array];
        Route *pinkRoute20 = [[Route alloc] init];
        pinkRoute20.routenumber = @"Pink route 20 - V5";
        pinkRoute20.routedifficulty = @"RedCircle.png";
        pinkRoute20.routelocation = @"Route 20 location.png";
        pinkRoute20.routeCompletedStatus = complete;
        
        [self.pinkRoutes addObject:pinkRoute18]; //index 0
        [self.pinkRoutes addObject:pinkRoute19]; //index 1
        [self.pinkRoutes addObject:pinkRoute20]; //index 2
        
        //^pink routes array
        
        
        self.blueRoutes = [NSMutableArray array];               //accesses the blue Routes array
        Route *blueRoute21 = [[Route alloc] init];              //creates an entity in the array named blueRouteX
        blueRoute21.routenumber = @"Blue route 21 - V4";
        blueRoute21.routedifficulty = @"GreenCircle.png";
        blueRoute21.routelocation = @"Route 21 location.png";
        blueRoute21.routeCompletedStatus = complete;
        
        self.blueRoutes = [NSMutableArray array];
        Route *blueRoute22 = [[Route alloc] init];
        blueRoute22.routenumber = @"Blue route 22 - V4";
        blueRoute22.routedifficulty = @"GreenCircle.png";
        blueRoute22.routelocation = @"Route 22 location.png";
        blueRoute22.routeCompletedStatus = complete;
        
        self.blueRoutes = [NSMutableArray array];
        Route *blueRoute23 = [[Route alloc] init];
        blueRoute23.routenumber = @"Blue route 23 - V5";
        blueRoute23.routedifficulty = @"YellowCircle.png";
        blueRoute23.routelocation = @"Route 23 location.png";
        blueRoute23.routeCompletedStatus = complete;
        
        self.blueRoutes = [NSMutableArray array];
        Route *blueRoute24 = [[Route alloc] init];
        blueRoute24.routenumber = @"Blue route 24 - V6";
        blueRoute24.routedifficulty = @"RedCircle.png";
        blueRoute24.routelocation = @"Route 24 location.png";
        blueRoute24.routeCompletedStatus = complete;
        
        [self.blueRoutes addObject:blueRoute21]; //index 0
        [self.blueRoutes addObject:blueRoute22]; //index 1
        [self.blueRoutes addObject:blueRoute23]; //index 2
        [self.blueRoutes addObject:blueRoute24]; //index 3
        
        //^blue routes array
        
        
        self.blackRoutes = [NSMutableArray array];              //accesses the black Routes array
        Route *blackRoute25 = [[Route alloc] init];             //creates an entity in the array named blackRouteX
        blackRoute25.routenumber = @"Black route 25 - V5";
        blackRoute25.routedifficulty = @"GreenCircle.png";
        blackRoute25.routelocation = @"Route 25 location.png";
        blackRoute25.routeCompletedStatus = complete;
        
        self.blackRoutes = [NSMutableArray array];
        Route *blackRoute26 = [[Route alloc] init];
        blackRoute26.routenumber = @"Black route 26 - V6";
        blackRoute26.routedifficulty = @"YellowCircle.png";
        blackRoute26.routelocation = @"Route 26 location.png";
        blackRoute26.routeCompletedStatus = complete;
        
        self.blackRoutes = [NSMutableArray array];
        Route *blackRoute27 = [[Route alloc] init];
        blackRoute27.routenumber = @"Black route 27 - V7";
        blackRoute27.routedifficulty = @"RedCircle.png";
        blackRoute27.routelocation = @"Route 27 location.png";
        blackRoute27.routeCompletedStatus = complete;

        [self.blackRoutes addObject:blackRoute25]; //index 0
        [self.blackRoutes addObject:blackRoute26]; //index 1
        [self.blackRoutes addObject:blackRoute27]; //index 2
        
        //^black routes array
        
        
        self.purpleRoutes = [NSMutableArray array];
        Route *purpleRoute28 = [[Route alloc] init];
        purpleRoute28.routenumber = @"Purple route 28 - V7+";
        purpleRoute28.routedifficulty = @"RedCircle.png";
        purpleRoute28.routelocation = @"Route 28 location.png";
        purpleRoute28.routeCompletedStatus = complete;
        
        self.purpleRoutes = [NSMutableArray array];
        Route *purpleRoute29 = [[Route alloc] init];
        purpleRoute29.routenumber = @"Purple route 29 - V7+";
        purpleRoute29.routedifficulty = @"RedCircle.png";
        purpleRoute29.routelocation = @"Route 29 location.png";
        purpleRoute29.routeCompletedStatus = complete;
        
        self.purpleRoutes = [NSMutableArray array];
        Route *purpleRoute30 = [[Route alloc] init];
        purpleRoute30.routenumber = @"Purple route 30 - V7+";
        purpleRoute30.routedifficulty = @"RedCircle.png";
        purpleRoute30.routelocation = @"Route 30 location.png";
        purpleRoute30.routeCompletedStatus = complete;
        
        self.purpleRoutes = [NSMutableArray array];
        Route *purpleRoute31 = [[Route alloc] init];
        purpleRoute31.routenumber = @"Purple route 31 - V7+";
        purpleRoute31.routedifficulty = @"RedCircle.png";
        purpleRoute31.routelocation = @"Route 31 location.png";
        purpleRoute31.routeCompletedStatus = complete;
        
        [self.purpleRoutes addObject:purpleRoute28]; //index 0
        [self.purpleRoutes addObject:purpleRoute29]; //index 1
        [self.purpleRoutes addObject:purpleRoute30]; //index 2
        [self.purpleRoutes addObject:purpleRoute31]; //index 3
        
        //^purple routes array
        
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourGreen = [[RouteColour alloc] init];
        routeColourGreen.routeColour = @"Green routes  VB - V1";
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourOrange = [[RouteColour alloc] init];
        routeColourOrange.routeColour = @"Orange routes  V0 - V2";
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourGrey = [[RouteColour alloc] init];
        routeColourGrey.routeColour = @"Grey routes  V1 - V3";
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourYellow = [[RouteColour alloc] init];
        routeColourYellow.routeColour = @"Yellow routes  V2 - V4";
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourPink = [[RouteColour alloc] init];
        routeColourPink.routeColour = @"Pink routes  V3 - V5";
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourBlue = [[RouteColour alloc] init];
        routeColourBlue.routeColour = @"Blue routes  V4 - V6";
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourBlack = [[RouteColour alloc] init];
        routeColourBlack.routeColour = @"Black routes  V5 - V7";
        
        self.colourOfRoutes = [NSMutableArray array];
        RouteColour *routeColourPurple = [[RouteColour alloc] init];
        routeColourPurple.routeColour = @"Purple routes  V7+";
        
        [self.colourOfRoutes addObject:routeColourGreen];   //index 0
        [self.colourOfRoutes addObject:routeColourOrange];  //index 1
        [self.colourOfRoutes addObject:routeColourGrey];    //index 2
        [self.colourOfRoutes addObject:routeColourYellow];  //index 3
        [self.colourOfRoutes addObject:routeColourPink];    //index 4
        [self.colourOfRoutes addObject:routeColourBlue];    //index 5
        [self.colourOfRoutes addObject:routeColourBlack];   //index 6
        [self.colourOfRoutes addObject:routeColourPurple];   //index 7
        
        //^colour of routes array

    }
    return self;
}

@end
