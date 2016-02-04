//
//  DetailViewController.h
//  EveryDoItAgain
//
//  Created by Anthony Tulai on 2016-02-03.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) ToDo *detailToDo;


@end

