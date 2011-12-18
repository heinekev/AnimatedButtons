//
//  Animated_ButtonsAppDelegate.m
//  Animated Buttons
//
//  Created by Kevin Anderson on 3/17/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "Animated_ButtonsAppDelegate.h"
#import "Animated_ButtonsViewController.h"

@implementation Animated_ButtonsAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
