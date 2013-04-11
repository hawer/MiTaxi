//
//  MapViewController.h
//  MiTaxi
//
//  Created by Hawer Torres on 4/10/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController  <GMSMapViewDelegate>
{
    GMSMapView *mapView;
}
@end
