//
//  AddNewToDoViewController.m
//  EveryDoItAgain
//
//  Created by Anthony Tulai on 2016-02-03.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "AddNewToDoViewController.h"

@implementation AddNewToDoViewController



- (IBAction)returnData:(id)sender {
    
    [self.delegate updateNewToDo:self title:self.titleTextField.text desc:self.descriptionTextField.text priority:[self.priorityTextField.text intValue]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
- (IBAction)setDefaults:(id)sender {
    
    [self.delegate updateDefaults:self title:self.titleTextField.text desc:self.descriptionTextField.text priority:[self.priorityTextField.text intValue]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)viewDidLoad {
    if (self.defaultTitle) {
        self.titleTextField.text = self.defaultTitle;
    }
    if (self.defaultDescription) {
        self.descriptionTextField.text = self.defaultDescription;
    }
    if (self.defaultPriority) {
        self.priorityTextField.text = self.defaultPriority;
    }
    
}

@end
