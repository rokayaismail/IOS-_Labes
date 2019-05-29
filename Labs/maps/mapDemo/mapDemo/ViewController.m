//
//  ViewController.m
//  mapDemo
//
//  Created by JETS Mobile Lab-11 on 4/23/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)clickGesture:(UITapGestureRecognizer *)sender;

@end

@implementation ViewController

# pragma mark : Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [_mapView setZoomEnabled:NO];
    [_mapView setDelegate:self];
    _locManager = [CLLocationManager new];
    [_locManager startUpdatingLocation];
    [_locManager setDistanceFilter:kCLHeadingFilterNone];
    [_locManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locManager setDelegate:self];
    [_locManager requestAlwaysAuthorization];
}
# pragma mark : MapView Maethods of Delegate

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("regionWillChangeAnimated\n");
}
- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("regionDidChangeAnimated\n");
}
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    printf("didSelectAnnotationView\n");
}
#pragma mark : action
- (IBAction)clickGesture:(UITapGestureRecognizer *)sender {
    CGPoint  touchPoint = [sender locationInView: _mapView];
    CLLocationCoordinate2D coordinate = [_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    MapAnnotation * annot =[MapAnnotation new];
    annot.coordinate = coordinate;
    annot.title =@"You clicked here";
    [_mapView setClearsContextBeforeDrawing:YES];
    [_mapView addAnnotation:annot];
}
#pragma mark : LocationManager
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    CLLocation * location = [locations lastObject];
    printf("didUpdate Location\n");
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude);
    _mapView.region = MKCoordinateRegionMakeWithDistance(coordinate, 200, 200);
    _mapView.showsUserLocation = true;
    printf("Lat = %f, Lon = %f\n",location.coordinate.latitude,location.coordinate.longitude);
}
@end
