//
//  AddNewToDoViewController.h
//  EveryDoItAgain
//
//  Created by Anthony Tulai on 2016-02-03.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "Todo.h"
@class AddNewToDoViewController;

@protocol SetToDoDelegate <NSObject>

-(void)updateNewToDo:(AddNewToDoViewController *)newTodo title: (NSString *)title desc:(NSString *)description priority: (int) priority;

-(void)updateDefaults:(AddNewToDoViewController *)newTodo title: (NSString *)title desc:(NSString *)description priority: (int) priority;

@end

@interface AddNewToDoViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (strong, nonatomic) IBOutlet UITextField *priorityTextField;
@property (strong, nonatomic) NSString *defaultTitle;
@property (strong, nonatomic) NSString *defaultDescription;
@property (strong, nonatomic) NSString *defaultPriority;

@property (strong, nonatomic) ToDo *defaultToDo;

@property (weak, nonatomic) id <SetToDoDelegate> delegate;

@end
