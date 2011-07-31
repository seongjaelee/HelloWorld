//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Seong Jae Lee on 7/31/11.
//  Copyright 2011 BlueBrown. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController {
    
    UITextField *textField;
    UILabel *label;
    NSString *string;
}

@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, copy) NSString *string;

- (void)updateString;

@end
