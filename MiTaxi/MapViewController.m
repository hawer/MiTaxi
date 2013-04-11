//
//  MapViewController.m
//  MiTaxi
//
//  Created by Hawer Torres on 4/10/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *userData = [NSUserDefaults standardUserDefaults];
    
    NSString *phone =  [userData objectForKey:@"mt_user_phone"];
    if(!phone){
        [self performSegueWithIdentifier:@"seguemodaluser" sender:self];
    }

    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:4.6543
                                                            longitude:-74.0593
                                                                 zoom:12];
    mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    mapView.delegate = self;
    self.view = mapView;
    GMSMarkerOptions *options = [[GMSMarkerOptions alloc] init];
    options.position = CLLocationCoordinate2DMake(4.6543, -74.0593);
    options.title = @"Bogota";
    options.snippet = @"Colombia";
    options.icon = [UIImage imageNamed:@"logosymb"];
    [mapView addMarkerWithOptions:options];
}

@end
