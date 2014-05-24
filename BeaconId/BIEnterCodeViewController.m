//
//  BIViewController.m
//  BeaconId
//
//  Created by Alex on 25.05.14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "BIEnterCodeViewController.h"
#import <Parse/Parse.h>

@interface BIEnterCodeViewController ()

@end

@implementation BIEnterCodeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
	// Do any additional setup after loading the view, typically from a nib.
}

@end
