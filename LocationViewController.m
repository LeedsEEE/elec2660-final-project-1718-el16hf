//
//  LocationViewController.m
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.location = [[CLLocationManager alloc] init];
    
    self.mapView.delegate = self;
    self.location.delegate = self;
    
    [self.location requestWhenInUseAuthorization];
    //request for locational services
    
    self.mapView.showsUserLocation = YES;
    
    CLLocation *currentLocation = self.location.location;
    CLLocationCoordinate2D locationCoords = currentLocation.coordinate;
    //displaying users location
    
    self.mapView.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.09, 0.09));
    //setting zoom of map when loaded
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = CLLocationCoordinate2DMake(53.803429, -1.579617);
    //setting the coordinates of the climbing lab
    point.title = @"The Climbing Lab";
    [self.mapView addAnnotation:point];
    //Annotation added to map, https://www.appcoda.com/ios-programming-101-drop-a-pin-on-map-with-mapkit-api/
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

@end
