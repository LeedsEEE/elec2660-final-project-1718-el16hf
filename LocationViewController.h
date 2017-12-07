//
//  LocationViewController.h
//  Climbing Application
//
//  Created by Harry Frankish [el16hf] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import <AddressBook/AddressBook.h>


@interface LocationViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *location;

@property CLLocationDegrees longitude;
@property CLLocationDegrees latitude;



@end
