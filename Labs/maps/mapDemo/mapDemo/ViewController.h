//
//  ViewController.h
//  mapDemo
//
//  Created by JETS Mobile Lab-11 on 4/23/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapAnnotation.h"
@interface ViewController : UIViewController <MKMapViewDelegate ,CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property CLLocationManager * locManager;

@end

