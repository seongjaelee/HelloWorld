//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Seong Jae Lee on 7/31/11.
//  Copyright 2011 BlueBrown. All rights reserved.
//

#import "HelloWorldAppDelegate.h"
#import "HelloWorldViewController.h"

@implementation HelloWorldAppDelegate

@synthesize window;
@synthesize viewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	// Set up the view controller
	HelloWorldViewController *aViewController = [[HelloWorldViewController alloc] initWithNibName:@"HelloWorldViewController" bundle:[NSBundle mainBundle]];
	self.viewController = aViewController;
	[aViewController release];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
	
	// Add the view controller's view as a subview of the window
	UIView *controllersView = [viewController view];
	[window addSubview:controllersView];
	[window makeKeyAndVisible];
}


- (void)dealloc {
	[viewController release];
	[window release];
	[super dealloc];
}

@end
