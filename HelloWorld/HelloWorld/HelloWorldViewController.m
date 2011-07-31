//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Seong Jae Lee on 7/31/11.
//  Copyright 2011 BlueBrown. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController

@synthesize textField;
@synthesize label;
@synthesize string;


- (void)viewDidLoad {
    // When the user starts typing, show the clear button in the text field.
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    // When the view first loads, display the placeholder text that's in the
    // text field in the label.
    label.text = textField.placeholder;
}


- (void)updateString {
	
	// Store the text of the text field in the 'string' instance variable.
	self.string = textField.text;
    // Set the text of the label to the value of the 'string' instance variable.
	label.text = self.string;
}


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	// When the user presses return, take focus away from the text field so that the keyboard is dismissed.
	if (theTextField == textField) {
		[textField resignFirstResponder];
        // Invoke the method that changes the greeting.
        [self updateString];
	}
	return YES;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Dismiss the keyboard when the view outside the text field is touched.
    [textField resignFirstResponder];
    // Revert the text field to the previous value.
    textField.text = self.string; 
    [super touchesBegan:touches withEvent:event];
}

 
- (void)dealloc {
    [label release];
    [textField release];
    [super dealloc];
}

@end
