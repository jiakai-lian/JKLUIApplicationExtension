//
//  JKLViewController.m
//  JKLUIApplicationExtension
//
//  Created by Jacky on 01/03/2016.
//  Copyright (c) 2016 Jacky. All rights reserved.
//

#import "JKLViewController.h"

#import <JKLUIApplicationExtension/UIApplication+JKLAppDelegate.h>
#import <JKLUIApplicationExtension/UIApplication+JKLInstanceProvider.h>

@interface JKLViewController ()

@end

@implementation JKLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self testAppDelegateCategory];
    [self testInstanceProvider];
    [self testInstanceForClass];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testAppDelegateCategory
{
    NSAssert([UIApplication jkl_appDelegate],@"AppDelegate cannot be nil");
    NSLog(@"%@",[UIApplication jkl_appDelegate]);
}

- (void)testInstanceProvider
{
    NSAssert([UIApplication jkl_instanceProvider],@"IntanceProvider cannot be nil");
    NSLog(@"%@",[UIApplication jkl_instanceProvider]);
}

- (void)testInstanceForClass
{
    NSObject * sharedObject = [[NSObject alloc] init];
    [[UIApplication jkl_instanceProvider] setInstanceForClass:[NSObject class] withObject:sharedObject];
    
    NSAssert([[UIApplication jkl_instanceProvider] instanceForClass:[NSObject class]],@"intance cannot be nil");
    NSAssert([sharedObject isEqual:[[UIApplication jkl_instanceProvider] instanceForClass:[NSObject class]]],@"");
    
    [[UIApplication jkl_instanceProvider] removeInstanceForClass:[NSObject class]];
    
    NSAssert(![[UIApplication jkl_instanceProvider] instanceForClass:[NSObject class]],@"intance should be nil after being removed");
    
}

@end
