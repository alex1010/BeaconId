//
//  BIScanBeaconsViewController.m
//  BeaconId
//
//  Created by Alex on 25.05.14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import "BIScanBeaconsViewController.h"
#import <CoreLocation/CoreLocation.h>

NSString *const kTestUserID = @"68753A44-4D6F-1226-9C60-0050E4C00067";


@interface BIScanBeaconsViewController () <CLLocationManagerDelegate>

@property (nonatomic) CLLocationManager *manager;

@end

@implementation BIScanBeaconsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.manager = [CLLocationManager new];
    self.manager.delegate = self;
    
    CLBeaconRegion *region = [[CLBeaconRegion alloc] initWithProximityUUID:[[NSUUID alloc]
        initWithUUIDString:@"45D8D416-AC71-4E78-B011-9FCA312285ED"]
          major:0
          minor:0
          identifier:@"mybeacon"];
   [self.manager startRangingBeaconsInRegion:region];
    // Do any additional setup after loading the view.
}

- (void)locationManager:(CLLocationManager *)manager didRangeBeacons:(NSArray *)beacons inRegion:(CLBeaconRegion *)region {
    CLBeacon *beacon = [beacons firstObject];
    if (beacon.proximity == CLProximityNear) {
        NSLog(@"%@", beacon.proximityUUID);
    }
}

@end
