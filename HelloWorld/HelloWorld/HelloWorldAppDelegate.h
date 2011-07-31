//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by Seong Jae Lee on 7/31/11.
//  Copyright 2011 BlueBrown. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloWorldViewController;

@interface HelloWorldAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HelloWorldViewController *viewController;

@end
